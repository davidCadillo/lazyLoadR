#' Check if you have packages installed
#'
#' Check if you have packages installed and install it if there is missing.
#' The actions are shown by console.
#' @param packages a vector with the packages to check or install, depending on the case.
#' @keywords UPAO
#' @export
#' @examples
#' \dontrun{
#' checkPackages("twitteR")
#' checkPackages(c("tidyr","ggplot2"))
#'}
checkPackages<-function(packages){
    for (paquete in packages){
        if(!(paquete %in% rownames(installed.packages()))){
            cat(paste0("Se instalar\u00e1 ", paquete))
            install.packages(paquete)
            cat(paste0("Se instal\u00f3 ", paquete))
        }else{
            cat(paste0(paquete," ya est\u00e1 instalado."))
        }
        library(paquete,character.only = T)
    }
    if(length(packages)>1)
        cat(paste0(c("Se cargaron los paquetes:",packages)))
    else
        cat(paste0(c("Se carg\u00f3 el paquete:",packages)))


}

