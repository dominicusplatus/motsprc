#include <tspdualcrossover.h>

std::string TspDualCrossoverQuad::className() const
{
    return "FlowShopOpCrossoverQuad";
}

bool TspDualCrossoverQuad::operator()(TspDRoute & _flowshop1, TspDRoute & _flowshop2)
{
    bool oneAtLeastIsModified;
    // computation of the 2 random points
    unsigned int point1, point2;
    do
    {
        point1 =  rng.random(std::min(_flowshop1.size(), _flowshop2.size()));
        point2 =  rng.random(std::min(_flowshop1.size(), _flowshop2.size()));
    } while (fabs((double) point1-point2) <= 2);
    // computation of the offspring
    TspDRoute offspring1 = generateOffspring(_flowshop1, _flowshop2, point1, point2);
    TspDRoute offspring2 = generateOffspring(_flowshop2, _flowshop1, point1, point2);
    // does at least one genotype has been modified ?
    if ((_flowshop1 != offspring1) || (_flowshop2 != offspring2))
    {
        // update
        _flowshop1.value(offspring1);
        _flowshop2.value(offspring2);
        // at least one genotype has been modified
        oneAtLeastIsModified = true;
    }
    else
    {
        // no genotype has been modified
        oneAtLeastIsModified = false;
    }
    // return 'true' if at least one genotype has been modified
    return oneAtLeastIsModified;
}


TspDRoute TspDualCrossoverQuad::generateOffspring(const TspDRoute & _parent1, const TspDRoute & _parent2, unsigned int _point1, unsigned int _point2)
{
    TspDRoute result = _parent1;
    std::vector<bool> taken_values(result.size(), false);
    if (_point1 > _point2)
        std::swap(_point1, _point2);
    /* first parent */
    for (unsigned int i=0 ; i<=_point1 ; i++)
    {
        // result[i] == _parent1[i]
        taken_values[_parent1[i]] = true;
    }
    for (unsigned int i=_point2 ; i<result.size() ; i++)
    {
        // result[i] == _parent1[i]
        taken_values[_parent1[i]] = true;
    }
    /* second parent */
    unsigned int i = _point1+1;
    unsigned int j = 0;
    while (i<_point2 && j<_parent2.size())
    {
        if (! taken_values[_parent2[j]])
        {
            result[i] = _parent2[j];
            i++;
        }
        j++;
    }
    return result;
}
