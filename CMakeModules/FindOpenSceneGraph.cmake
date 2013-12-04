FIND_PATH(OPENSCENEGRAPH_INCLUDE_DIR osg/Referenced
  PATHS
  $ENV{OSGDIR}/include
  $ENV{OSG_ROOT}/include
  $ENV{OSGHOME}/include
  /usr/include 
  /usr/local/include
)

FIND_PATH(OPENSCENEGRAPH_LIB_DIR osg.lib libosg.so
  PATHS
  $ENV{OSGDIR}/lib
  $ENV{OSG_ROOT}/lib
  $ENV{OSGHOME}/lib
  /usr/lib 
  /usr/local/lib
)

SET(OSG_FOUND "NO")
IF(OPENSCENEGRAPH_INCLUDE_DIR AND OPENSCENEGRAPH_LIB_DIR)
  SET(OSG_FOUND "YES")
ENDIF(OPENSCENEGRAPH_INCLUDE_DIR AND OPENSCENEGRAPH_LIB_DIR)