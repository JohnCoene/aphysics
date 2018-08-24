#' Dependency
#'
#' Add aphysics dependency.
#'
#' @param cdn Whether to use local or CDN files.
#'
#' @examples
#' library(aframer)
#'
#' browse_aframe(
#'   a_scene(
#'     physics = opts_aframe(debug = TRUE),
#'     a_dependency(),
#'     aphysics_dependency(),
#'     a_entity(
#'       camera = NA,
#'       `look-controls` = NA
#'     ),
#'     a_plane(
#'       `static-body` = NA
#'     ),
#'     a_box(
#'       `static-body` = NA,
#'       position = xyz_aframe(0, .5, -5),
#'       width = 3,
#'       height = 1,
#'       depth = 1
#'     ),
#'     a_box(
#'       `dynamic-body` = NA,
#'       position = xyz_aframe(5, .5, 0),
#'       width = 1,
#'       height = 1,
#'       depth = 1
#'     )
#'   )
#' )
#'
#' @note Source \link[aframer]{a_dependency} \emph{before} \code{aphysics_dependency}.
#'
#' @export
aphysics_dependency <- function(cdn = FALSE){
  .get_dependency(
    script = "aframe-physics-system.min.js",
    cdn = cdn
  )
}
