# DURATION - vs clustered bellow 1, se smoother
## prolonged by finding the star in VS, or by longer fixations in SE in general
Fixations %>%
  ggplot(aes(Duration)) + geom_density() +
  facet_wrap(~Task)


# POS X - VS long tailed, SE clustered
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


# MEAN VELOCITY - similar, concentrated tightly around 0
Saccades %>%
  ggplot(aes(MeanVelocityX)) + geom_density() +
  facet_wrap(~Task)


# MEAN ACCELERATION - similar, concentrated between -5000 and 5000
Saccades %>%
  ggplot(aes(MeanAccellerationX)) + geom_density() +
  facet_wrap(~Task)


# PUPIL SIZE - two different peaks, visual search is more clustered
Samples2 %>%
  ggplot(aes(PupilSize)) + geom_density() +
  facet_wrap(~Task)
