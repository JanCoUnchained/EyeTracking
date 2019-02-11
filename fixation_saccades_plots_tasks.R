# DURATION - vs clustered bellow 1, se smoother
## prolonged by finding the star in VS, or by longer fixations in SE in general
Fixations %>%
  ggplot(aes(Duration)) + geom_density() +
  facet_wrap(~Task)


# POS X - VS long tailed, SE clustered
## would make more sense, if they would be further split by task
Fixations %>%
  ggplot(aes(PositionX)) + geom_density() +
  facet_wrap(~Task)


# POS Y - VS long tailed, SE clustered
Fixations %>%
  ggplot(aes(PositionY)) + geom_density() +
  facet_wrap(~Task)


# AMPLITUDE - VS has a slightly smoother progress
Saccades %>%
  ggplot(aes(AmplitudeX)) + geom_density() +
  facet_wrap(~Task)


# MEAN VELOCITY - concentrated tightly around 0
## visual foraging has fatter tails though, indicating 
Saccades %>%
  ggplot(aes(MeanVelocityX)) + geom_density() +
  facet_wrap(~Task)


# MEAN ACCELERATION - similar, concentrated between -5000 and 5000
## plots look different than Fabio's, probably because of our cutoff
Saccades %>%
  ggplot(aes(MeanAccellerationX)) + geom_density() +
  facet_wrap(~Task)


# PUPIL SIZE - two different peaks, visual search is more clustered
## should be further split by condition & participant
## watch out 
Samples2 %>%
  ggplot(aes(PupilSize)) + geom_density() +
  facet_wrap(~Task)
