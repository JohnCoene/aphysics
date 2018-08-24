.get_dependency <- function(script, cdn){

  if(isTRUE(cdn))
    path <- c(href = "https://cdn.rawgit.com/donmccurdy/aframe-physics-system/v3.2.0/dist/")
  else
    path <- c(file = system.file("aphysics", package = "aphysics"))

  htmltools::htmlDependency(
    name = "aphysics",
    version = "3.2.0",
    src = path,
    script = script
  )
}
