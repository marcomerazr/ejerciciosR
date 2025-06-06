library(ggplot2)

# Datos
samples <- c("HC69", "HC69-ASP-L")
delta_ct <- c(12.26, 11.90)
delta_delta_ct <- delta_ct[2] - delta_ct[1]
fold_change <- 2^(-delta_delta_ct)
fold_changes <- c(1, fold_change)

# Crear data frame
df <- data.frame(
  Muestra = samples,
  FoldChange = fold_changes
)

# Graficar
ggplot(df, aes(x = Muestra, y = FoldChange, fill = Muestra)) +
  geom_bar(stat = "identity", width = 0.5) +
  geom_text(aes(label = round(FoldChange, 2)), vjust = -0.5, size = 4) +
  scale_fill_manual(values = c("skyblue", "#ca1616")) +
  scale_y_continuous(expand = c(0, 0), limits = c(0, 1.5)) +
  labs(
    title = "Normalized gene expression asp over beta actin",
    y = "Fold change (2^-ΔΔCt)",
    x = "Cell line"
  ) +
  theme_minimal() +
  theme(
    panel.grid.major = element_blank(),   # Quita cuadrícula
    panel.grid.minor = element_blank(),
    axis.line        = element_line(color = "black"),  # Mantiene ejes
    axis.ticks       = element_line(color = "black"),  # Mantiene ticks
    axis.text        = element_text(color = "black"),  # Mantiene números
    plot.title       = element_text(hjust = 0.5, size = 12, vjust= 0),
    legend.position  = "none"
  )



