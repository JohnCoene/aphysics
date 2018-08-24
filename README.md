# aphysics

Physics for [aframer](https://aframer.john-coene.com)

## Installation

``` r
# install.packages("devtools")
devtools::install_github("JohnCoene/aphysics")
```

## Example

More information on the [website](https://aphysics.john-coene.com)

``` r
library(aframer)
library(aphysics)

browse_aframe(
  a_scene(
    physics = opts_aframe(debug = TRUE),
    a_dependency(cdn = TRUE),
    aphysics_dependency(cdn = TRUE),
    a_entity(
      camera = NA,
      `look-controls` = NA
    ),
    a_plane(
      `static-body` = NA
    ),
    a_box(
      `static-body` = NA,
      position = xyz_aframe(0, .5, -5),
      width = 3,
      height = 1,
      depth = 1
    ),
    a_box(
      `dynamic-body` = NA,
      position = xyz_aframe(5, .5, 0),
      width = 1,
      height = 1,
      depth = 1
    )
  )
)
```

