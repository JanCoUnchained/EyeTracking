Fixations_slim <- Fixations %>%
  filter(Task == "VisualSearch")

plot_n_save2 <- function(participant) {
    one_person <- Fixations_slim %>%
      filter(ParticipantID == as.character(participant))
    
    plot <- ggplot(one_person, aes(x = PositionX, 
                                   y = 1081 - PositionY)) +
      geom_path(alpha = .6, color = '#F0B952') +
      geom_point(size = one_person$Duration*5, alpha = .6, color = '#6291D6', stroke = 1, shape = 21) +
      # repelling text in plots: fuck that's good
      # ggrepel::geom_text_repel(aes(label = FixationNum), size = 3, color = 'black') +
      ## the following lines are for aesthetic purposes only
      xlim(0,1920) + ylim(0,1080) +
      labs(title = paste0("Visual search - ", as.character(unique(one_person$ParticipantID))),
           subtitle = paste0("Seach order: ", as.character(unique(one_person$SearchOrder)))) +
      theme_bw() + theme(legend.position = 'none') +
      facet_wrap(~Item)
    
    ggsave(sprintf("file%s.png", unique(one_person$ParticipantID)), plot)
}


# list of participants
participants <- as.data.frame(table(Fixations_slim$ParticipantID)) %>%
  filter(Freq != 0)

participants <- as.character(participants$Var1)


# test
plot_n_save2(participants[1])


# loop
lapply(participants, plot_n_save2)
