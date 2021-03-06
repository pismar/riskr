estimate <- term <- estimate_fmt <- NULL
#' Write the Linear Combination 
#'
#' @description Write the linear combination 
#' @param model A model
#' @return A string
#' @examples
#' data("credit")
#' 
#' model <- glm(bad ~ sex + marital_status + age + personal_net_income,
#'              data = credit, family = binomial(link = logit))
#' 
#' linear_formula(model)
#' @export
linear_formula <- function(model){
  
  t <- broom::tidy(model) %>% 
    dplyr::mutate(estimate_fmt = format(estimate, width = 10, scientific = FALSE),
           prod = ifelse(term == "(Intercept)", "", estimate_fmt),
           prod = ifelse(term == "(Intercept)",
                         estimate_fmt,
                         paste(estimate_fmt, "*", term))) 
  
  cat(paste(t$prod, collapse = " +\n"))
  
  paste(t$prod, collapse = " + ")
    
}