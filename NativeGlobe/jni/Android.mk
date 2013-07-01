#----------------------------------------------------------------------------------
# File:        native_globe/jni/Android.mk
# SDK Version: v10.10 
# Email:       tegradev@nvidia.com
# Site:        http://developer.nvidia.com/
#
# Copyright (c) 2007-2012, NVIDIA CORPORATION.  All rights reserved.
#
# TO  THE MAXIMUM  EXTENT PERMITTED  BY APPLICABLE  LAW, THIS SOFTWARE  IS PROVIDED
# *AS IS*  AND NVIDIA AND  ITS SUPPLIERS DISCLAIM  ALL WARRANTIES,  EITHER  EXPRESS
# OR IMPLIED, INCLUDING, BUT NOT LIMITED  TO, IMPLIED WARRANTIES OF MERCHANTABILITY
# AND FITNESS FOR A PARTICULAR PURPOSE.  IN NO EVENT SHALL  NVIDIA OR ITS SUPPLIERS
# BE  LIABLE  FOR  ANY  SPECIAL,  INCIDENTAL,  INDIRECT,  OR  CONSEQUENTIAL DAMAGES
# WHATSOEVER (INCLUDING, WITHOUT LIMITATION,  DAMAGES FOR LOSS OF BUSINESS PROFITS,
# BUSINESS INTERRUPTION, LOSS OF BUSINESS INFORMATION, OR ANY OTHER PECUNIARY LOSS)
# ARISING OUT OF THE  USE OF OR INABILITY  TO USE THIS SOFTWARE, EVEN IF NVIDIA HAS
# BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
#
#
#----------------------------------------------------------------------------------
LOCAL_PATH := $(subst //,/,$(call my-dir))
include $(CLEAR_VARS)
LOCAL_MODULE := native_globe

LOCAL_C_INCLUDES := \
		$(LOCAL_PATH)/ \
		$(LOCAL_PATH)/GFX \
		$(LOCAL_PATH)/GFX/bullet \
		$(LOCAL_PATH)/GFX/detour \
		$(LOCAL_PATH)/GFX/GLES2 \
		$(LOCAL_PATH)/GFX/nvtristrip \
		$(LOCAL_PATH)/GFX/openal \
		$(LOCAL_PATH)/GFX/png \
		$(LOCAL_PATH)/GFX/recast \
		$(LOCAL_PATH)/GFX/ttf \
		$(LOCAL_PATH)/GFX/vorbis \
		$(LOCAL_PATH)/GFX/zlib 
		
libBullet_la_SOURCES := \
		GFX/bullet/bChunk.cpp \
		GFX/bullet/bChunk.h \
		GFX/bullet/bCommon.h \
		GFX/bullet/bDefines.h \
		GFX/bullet/bDNA.cpp \
		GFX/bullet/bDNA.h \
		GFX/bullet/bFile.cpp \
		GFX/bullet/bFile.h \
		GFX/bullet/btAabbUtil2.h \
		GFX/bullet/btActionInterface.h \
		GFX/bullet/btActivatingCollisionAlgorithm.cpp \
		GFX/bullet/btActivatingCollisionAlgorithm.h \
		GFX/bullet/btAlignedAllocator.cpp \
		GFX/bullet/btAlignedAllocator.h \
		GFX/bullet/btAlignedObjectArray.h \
		GFX/bullet/btAxisSweep3.cpp \
		GFX/bullet/btAxisSweep3.h \
		GFX/bullet/btBox2dBox2dCollisionAlgorithm.cpp \
		GFX/bullet/btBox2dBox2dCollisionAlgorithm.h \
		GFX/bullet/btBox2dShape.cpp \
		GFX/bullet/btBox2dShape.h \
		GFX/bullet/btBoxBoxCollisionAlgorithm.cpp \
		GFX/bullet/btBoxBoxCollisionAlgorithm.h \
		GFX/bullet/btBoxBoxDetector.cpp \
		GFX/bullet/btBoxBoxDetector.h \
		GFX/bullet/btBoxCollision.h \
		GFX/bullet/btBoxShape.cpp \
		GFX/bullet/btBoxShape.h \
		GFX/bullet/btBroadphaseInterface.h \
		GFX/bullet/btBroadphaseProxy.cpp \
		GFX/bullet/btBroadphaseProxy.h \
		GFX/bullet/btBulletCollisionCommon.h \
		GFX/bullet/btBulletDynamicsCommon.h \
		GFX/bullet/btBulletFile.cpp \
		GFX/bullet/btBulletFile.h \
		GFX/bullet/btBulletWorldImporter.cpp \
		GFX/bullet/btBulletWorldImporter.h \
		GFX/bullet/btBvhTriangleMeshShape.cpp \
		GFX/bullet/btBvhTriangleMeshShape.h \
		GFX/bullet/btCapsuleShape.cpp \
		GFX/bullet/btCapsuleShape.h \
		GFX/bullet/btCharacterControllerInterface.h \
		GFX/bullet/btClipPolygon.h \
		GFX/bullet/btCollisionAlgorithm.cpp \
		GFX/bullet/btCollisionAlgorithm.h \
		GFX/bullet/btCollisionConfiguration.h \
		GFX/bullet/btCollisionCreateFunc.h \
		GFX/bullet/btCollisionDispatcher.cpp \
		GFX/bullet/btCollisionDispatcher.h \
		GFX/bullet/btCollisionMargin.h \
		GFX/bullet/btCollisionObject.cpp \
		GFX/bullet/btCollisionObject.h \
		GFX/bullet/btCollisionShape.cpp \
		GFX/bullet/btCollisionShape.h \
		GFX/bullet/btCollisionWorld.cpp \
		GFX/bullet/btCollisionWorld.h \
		GFX/bullet/btCompoundCollisionAlgorithm.cpp \
		GFX/bullet/btCompoundCollisionAlgorithm.h \
		GFX/bullet/btCompoundShape.cpp \
		GFX/bullet/btCompoundShape.h \
		GFX/bullet/btConcaveShape.cpp \
		GFX/bullet/btConcaveShape.h \
		GFX/bullet/btConeShape.cpp \
		GFX/bullet/btConeShape.h \
		GFX/bullet/btConeTwistConstraint.cpp \
		GFX/bullet/btConeTwistConstraint.h \
		GFX/bullet/btConstraintSolver.h \
		GFX/bullet/btContactConstraint.cpp \
		GFX/bullet/btContactConstraint.h \
		GFX/bullet/btContactProcessing.cpp \
		GFX/bullet/btContactProcessing.h \
		GFX/bullet/btContactSolverInfo.h \
		GFX/bullet/btContinuousConvexCollision.cpp \
		GFX/bullet/btContinuousConvexCollision.h \
		GFX/bullet/btContinuousDynamicsWorld.cpp \
		GFX/bullet/btContinuousDynamicsWorld.h \
		GFX/bullet/btConvex2dConvex2dAlgorithm.cpp \
		GFX/bullet/btConvex2dConvex2dAlgorithm.h \
		GFX/bullet/btConvex2dShape.cpp \
		GFX/bullet/btConvex2dShape.h \
		GFX/bullet/btConvexCast.cpp \
		GFX/bullet/btConvexCast.h \
		GFX/bullet/btConvexConcaveCollisionAlgorithm.cpp \
		GFX/bullet/btConvexConcaveCollisionAlgorithm.h \
		GFX/bullet/btConvexConvexAlgorithm.cpp \
		GFX/bullet/btConvexConvexAlgorithm.h \
		GFX/bullet/btConvexHull.cpp \
		GFX/bullet/btConvexHull.h \
		GFX/bullet/btConvexHullComputer.cpp \
		GFX/bullet/btConvexHullComputer.h \
		GFX/bullet/btConvexHullShape.cpp \
		GFX/bullet/btConvexHullShape.h \
		GFX/bullet/btConvexInternalShape.cpp \
		GFX/bullet/btConvexInternalShape.h \
		GFX/bullet/btConvexPenetrationDepthSolver.h \
		GFX/bullet/btConvexPlaneCollisionAlgorithm.cpp \
		GFX/bullet/btConvexPlaneCollisionAlgorithm.h \
		GFX/bullet/btConvexPointCloudShape.cpp \
		GFX/bullet/btConvexPointCloudShape.h \
		GFX/bullet/btConvexPolyhedron.cpp \
		GFX/bullet/btConvexPolyhedron.h \
		GFX/bullet/btConvexShape.cpp \
		GFX/bullet/btConvexShape.h \
		GFX/bullet/btConvexTriangleMeshShape.cpp \
		GFX/bullet/btConvexTriangleMeshShape.h \
		GFX/bullet/btCylinderShape.cpp \
		GFX/bullet/btCylinderShape.h \
		GFX/bullet/btDbvt.cpp \
		GFX/bullet/btDbvt.h \
		GFX/bullet/btDbvtBroadphase.cpp \
		GFX/bullet/btDbvtBroadphase.h \
		GFX/bullet/btDefaultCollisionConfiguration.cpp \
		GFX/bullet/btDefaultCollisionConfiguration.h \
		GFX/bullet/btDefaultMotionState.h \
		GFX/bullet/btDefaultSoftBodySolver.cpp \
		GFX/bullet/btDefaultSoftBodySolver.h \
		GFX/bullet/btDiscreteCollisionDetectorInterface.h \
		GFX/bullet/btDiscreteDynamicsWorld.cpp \
		GFX/bullet/btDiscreteDynamicsWorld.h \
		GFX/bullet/btDispatcher.cpp \
		GFX/bullet/btDispatcher.h \
		GFX/bullet/btDynamicsWorld.h \
		GFX/bullet/btEmptyCollisionAlgorithm.cpp \
		GFX/bullet/btEmptyCollisionAlgorithm.h \
		GFX/bullet/btEmptyShape.cpp \
		GFX/bullet/btEmptyShape.h \
		GFX/bullet/btGeneric6DofConstraint.cpp \
		GFX/bullet/btGeneric6DofConstraint.h \
		GFX/bullet/btGeneric6DofSpringConstraint.cpp \
		GFX/bullet/btGeneric6DofSpringConstraint.h \
		GFX/bullet/btGenericPoolAllocator.cpp \
		GFX/bullet/btGenericPoolAllocator.h \
		GFX/bullet/btGeometryOperations.h \
		GFX/bullet/btGeometryUtil.cpp \
		GFX/bullet/btGeometryUtil.h \
		GFX/bullet/btGhostObject.cpp \
		GFX/bullet/btGhostObject.h \
		GFX/bullet/btGImpactBvh.cpp \
		GFX/bullet/btGImpactBvh.h \
		GFX/bullet/btGImpactCollisionAlgorithm.cpp \
		GFX/bullet/btGImpactCollisionAlgorithm.h \
		GFX/bullet/btGImpactMassUtil.h \
		GFX/bullet/btGImpactQuantizedBvh.cpp \
		GFX/bullet/btGImpactQuantizedBvh.h \
		GFX/bullet/btGImpactShape.cpp \
		GFX/bullet/btGImpactShape.h \
		GFX/bullet/btGjkConvexCast.cpp \
		GFX/bullet/btGjkConvexCast.h \
		GFX/bullet/btGjkEpa2.cpp \
		GFX/bullet/btGjkEpa2.h \
		GFX/bullet/btGjkEpaPenetrationDepthSolver.cpp \
		GFX/bullet/btGjkEpaPenetrationDepthSolver.h \
		GFX/bullet/btGjkPairDetector.cpp \
		GFX/bullet/btGjkPairDetector.h \
		GFX/bullet/btHashMap.h \
		GFX/bullet/btHeightfieldTerrainShape.cpp \
		GFX/bullet/btHeightfieldTerrainShape.h \
		GFX/bullet/btHinge2Constraint.cpp \
		GFX/bullet/btHinge2Constraint.h \
		GFX/bullet/btHingeConstraint.cpp \
		GFX/bullet/btHingeConstraint.h \
		GFX/bullet/btIDebugDraw.h \
		GFX/bullet/btInternalEdgeUtility.cpp \
		GFX/bullet/btInternalEdgeUtility.h \
		GFX/bullet/btJacobianEntry.h \
		GFX/bullet/btKinematicCharacterController.cpp \
		GFX/bullet/btKinematicCharacterController.h \
		GFX/bullet/btList.h \
		GFX/bullet/btManifoldPoint.h \
		GFX/bullet/btManifoldResult.cpp \
		GFX/bullet/btManifoldResult.h \
		GFX/bullet/btMaterial.h \
		GFX/bullet/btMatrix3x3.h \
		GFX/bullet/btMinkowskiPenetrationDepthSolver.cpp \
		GFX/bullet/btMinkowskiPenetrationDepthSolver.h \
		GFX/bullet/btMinkowskiSumShape.cpp \
		GFX/bullet/btMinkowskiSumShape.h \
		GFX/bullet/btMinMax.h \
		GFX/bullet/btMotionState.h \
		GFX/bullet/btMultimaterialTriangleMeshShape.cpp \
		GFX/bullet/btMultimaterialTriangleMeshShape.h \
		GFX/bullet/btMultiSapBroadphase.cpp \
		GFX/bullet/btMultiSapBroadphase.h \
		GFX/bullet/btMultiSphereShape.cpp \
		GFX/bullet/btMultiSphereShape.h \
		GFX/bullet/btOptimizedBvh.cpp \
		GFX/bullet/btOptimizedBvh.h \
		GFX/bullet/btOverlappingPairCache.cpp \
		GFX/bullet/btOverlappingPairCache.h \
		GFX/bullet/btOverlappingPairCallback.h \
		GFX/bullet/btPersistentManifold.cpp \
		GFX/bullet/btPersistentManifold.h \
		GFX/bullet/btPoint2PointConstraint.cpp \
		GFX/bullet/btPoint2PointConstraint.h \
		GFX/bullet/btPointCollector.h \
		GFX/bullet/btPolyhedralContactClipping.cpp \
		GFX/bullet/btPolyhedralContactClipping.h \
		GFX/bullet/btPolyhedralConvexShape.cpp \
		GFX/bullet/btPolyhedralConvexShape.h \
		GFX/bullet/btPoolAllocator.h \
		GFX/bullet/btQuadWord.h \
		GFX/bullet/btQuantization.h \
		GFX/bullet/btQuantizedBvh.cpp \
		GFX/bullet/btQuantizedBvh.h \
		GFX/bullet/btQuaternion.h \
		GFX/bullet/btQuickprof.cpp \
		GFX/bullet/btQuickprof.h \
		GFX/bullet/btRandom.h \
		GFX/bullet/btRaycastCallback.cpp \
		GFX/bullet/btRaycastCallback.h \
		GFX/bullet/btRaycastVehicle.cpp \
		GFX/bullet/btRaycastVehicle.h \
		GFX/bullet/btRigidBody.cpp \
		GFX/bullet/btRigidBody.h \
		GFX/bullet/btScalar.h \
		GFX/bullet/btScaledBvhTriangleMeshShape.cpp \
		GFX/bullet/btScaledBvhTriangleMeshShape.h \
		GFX/bullet/btSequentialImpulseConstraintSolver.cpp \
		GFX/bullet/btSequentialImpulseConstraintSolver.h \
		GFX/bullet/btSerializer.cpp \
		GFX/bullet/btSerializer.h \
		GFX/bullet/btShapeHull.cpp \
		GFX/bullet/btShapeHull.h \
		GFX/bullet/btSimpleBroadphase.cpp \
		GFX/bullet/btSimpleBroadphase.h \
		GFX/bullet/btSimpleDynamicsWorld.cpp \
		GFX/bullet/btSimpleDynamicsWorld.h \
		GFX/bullet/btSimplexSolverInterface.h \
		GFX/bullet/btSimulationIslandManager.cpp \
		GFX/bullet/btSimulationIslandManager.h \
		GFX/bullet/btSliderConstraint.cpp \
		GFX/bullet/btSliderConstraint.h \
		GFX/bullet/btSoftBody.cpp \
		GFX/bullet/btSoftBody.h \
		GFX/bullet/btSoftBodyConcaveCollisionAlgorithm.cpp \
		GFX/bullet/btSoftBodyConcaveCollisionAlgorithm.h \
		GFX/bullet/btSoftBodyData.h \
		GFX/bullet/btSoftBodyHelpers.cpp \
		GFX/bullet/btSoftBodyHelpers.h \
		GFX/bullet/btSoftBodyInternals.h \
		GFX/bullet/btSoftBodyRigidBodyCollisionConfiguration.cpp \
		GFX/bullet/btSoftBodyRigidBodyCollisionConfiguration.h \
		GFX/bullet/btSoftBodySolvers.h \
		GFX/bullet/btSoftBodySolverVertexBuffer.h \
		GFX/bullet/btSoftRigidCollisionAlgorithm.cpp \
		GFX/bullet/btSoftRigidCollisionAlgorithm.h \
		GFX/bullet/btSoftRigidDynamicsWorld.cpp \
		GFX/bullet/btSoftRigidDynamicsWorld.h \
		GFX/bullet/btSoftSoftCollisionAlgorithm.cpp \
		GFX/bullet/btSoftSoftCollisionAlgorithm.h \
		GFX/bullet/btSolve2LinearConstraint.cpp \
		GFX/bullet/btSolve2LinearConstraint.h \
		GFX/bullet/btSolverBody.h \
		GFX/bullet/btSolverConstraint.h \
		GFX/bullet/btSparseSDF.h \
		GFX/bullet/btSphereBoxCollisionAlgorithm.cpp \
		GFX/bullet/btSphereBoxCollisionAlgorithm.h \
		GFX/bullet/btSphereShape.cpp \
		GFX/bullet/btSphereShape.h \
		GFX/bullet/btSphereSphereCollisionAlgorithm.cpp \
		GFX/bullet/btSphereSphereCollisionAlgorithm.h \
		GFX/bullet/btSphereTriangleCollisionAlgorithm.cpp \
		GFX/bullet/btSphereTriangleCollisionAlgorithm.h \
		GFX/bullet/btStackAlloc.h \
		GFX/bullet/btStaticPlaneShape.cpp \
		GFX/bullet/btStaticPlaneShape.h \
		GFX/bullet/btStridingMeshInterface.cpp \
		GFX/bullet/btStridingMeshInterface.h \
		GFX/bullet/btSubSimplexConvexCast.cpp \
		GFX/bullet/btSubSimplexConvexCast.h \
		GFX/bullet/btTetrahedronShape.cpp \
		GFX/bullet/btTetrahedronShape.h \
		GFX/bullet/btTransform.h \
		GFX/bullet/btTransformUtil.h \
		GFX/bullet/btTriangleBuffer.cpp \
		GFX/bullet/btTriangleBuffer.h \
		GFX/bullet/btTriangleCallback.cpp \
		GFX/bullet/btTriangleCallback.h \
		GFX/bullet/btTriangleIndexVertexArray.cpp \
		GFX/bullet/btTriangleIndexVertexArray.h \
		GFX/bullet/btTriangleIndexVertexMaterialArray.cpp \
		GFX/bullet/btTriangleIndexVertexMaterialArray.h \
		GFX/bullet/btTriangleInfoMap.h \
		GFX/bullet/btTriangleMesh.cpp \
		GFX/bullet/btTriangleMesh.h \
		GFX/bullet/btTriangleMeshShape.cpp \
		GFX/bullet/btTriangleMeshShape.h \
		GFX/bullet/btTriangleShape.h \
		GFX/bullet/btTriangleShapeEx.cpp \
		GFX/bullet/btTriangleShapeEx.h \
		GFX/bullet/btTypedConstraint.cpp \
		GFX/bullet/btTypedConstraint.h \
		GFX/bullet/btUniformScalingShape.cpp \
		GFX/bullet/btUniformScalingShape.h \
		GFX/bullet/btUnionFind.cpp \
		GFX/bullet/btUnionFind.h \
		GFX/bullet/btUniversalConstraint.cpp \
		GFX/bullet/btUniversalConstraint.h \
		GFX/bullet/btVector3.h \
		GFX/bullet/btVehicleRaycaster.h \
		GFX/bullet/btVoronoiSimplexSolver.cpp \
		GFX/bullet/btVoronoiSimplexSolver.h \
		GFX/bullet/btWheelInfo.cpp \
		GFX/bullet/btWheelInfo.h \
		GFX/bullet/bullet.h \
		GFX/bullet/gim_array.h \
		GFX/bullet/gim_basic_geometry_operations.h \
		GFX/bullet/gim_bitset.h \
		GFX/bullet/gim_box_collision.h \
		GFX/bullet/gim_box_set.cpp \
		GFX/bullet/gim_box_set.h \
		GFX/bullet/gim_clip_polygon.h \
		GFX/bullet/gim_contact.cpp \
		GFX/bullet/gim_contact.h \
		GFX/bullet/gim_geom_types.h \
		GFX/bullet/gim_geometry.h \
		GFX/bullet/gim_hash_table.h \
		GFX/bullet/gim_linear_math.h \
		GFX/bullet/gim_math.h \
		GFX/bullet/gim_memory.cpp \
		GFX/bullet/gim_memory.h \
		GFX/bullet/gim_radixsort.h \
		GFX/bullet/gim_tri_collision.cpp \
		GFX/bullet/gim_tri_collision.h \
		GFX/bullet/SphereTriangleDetector.cpp \
		GFX/bullet/SphereTriangleDetector.h 
		

libdetour_la_SOURCES := \
		GFX/detour/DetourAlloc.cpp \
		GFX/detour/DetourAlloc.h \
		GFX/detour/DetourCommon.cpp \
		GFX/detour/DetourCommon.h \
		GFX/detour/DetourDebugDraw.h \
		GFX/detour/DetourNavMesh.cpp \
		GFX/detour/DetourNavMesh.h \
		GFX/detour/DetourNavMeshBuilder.cpp \
		GFX/detour/DetourNavMeshBuilder.h \
		GFX/detour/DetourNode.cpp \
		GFX/detour/DetourNode.h 
		
libopenal_la_SOURCES := \
		GFX/openal/al.h \
		GFX/openal/alAuxEffectSlot.c \
		GFX/openal/alAuxEffectSlot.h \
		GFX/openal/alBuffer.c \
		GFX/openal/alBuffer.h \
		GFX/openal/aLc.c \
		GFX/openal/alc.h \
		GFX/openal/alcConfig.c \
		GFX/openal/alcEcho.c \
		GFX/openal/alcModulator.c \
		GFX/openal/alcReverb.c \
		GFX/openal/alcRing.c \
		GFX/openal/alcThread.c \
		GFX/openal/alDatabuffer.c \
		GFX/openal/alDatabuffer.h \
		GFX/openal/alEffect.c \
		GFX/openal/alEffect.h \
		GFX/openal/alError.c \
		GFX/openal/alError.h \
		GFX/openal/alext.h \
		GFX/openal/alExtension.c \
		GFX/openal/alFilter.c \
		GFX/openal/alFilter.h \
		GFX/openal/alListener.c \
		GFX/openal/alListener.h \
		GFX/openal/alMain.h \
		GFX/openal/alSource.c \
		GFX/openal/alSource.h \
		GFX/openal/alState.c \
		GFX/openal/alState.h \
		GFX/openal/alThunk.c \
		GFX/openal/alThunk.h \
		GFX/openal/ALu.c \
		GFX/openal/alu.h \
		GFX/openal/android.c \
		GFX/openal/bs2b.c \
		GFX/openal/bs2b.h \
		GFX/openal/config.h \
		GFX/openal/efx.h \
		GFX/openal/efx-creative.h \
		GFX/openal/null.c 
		
librecast_la_SOURCES := \
		GFX/recast/DebugDraw.h \
		GFX/recast/Recast.cpp \
		GFX/recast/Recast.h \
		GFX/recast/RecastAlloc.cpp \
		GFX/recast/RecastAlloc.h \
		GFX/recast/RecastArea.cpp \
		GFX/recast/RecastContour.cpp \
		GFX/recast/RecastDebugDraw.h \
		GFX/recast/RecastDump.h \
		GFX/recast/RecastFilter.cpp \
		GFX/recast/RecastLog.cpp \
		GFX/recast/RecastLog.h \
		GFX/recast/RecastMesh.cpp \
		GFX/recast/RecastMeshDetail.cpp \
		GFX/recast/RecastRasterization.cpp \
		GFX/recast/RecastRegion.cpp \
		GFX/recast/RecastTimer.cpp \
		GFX/recast/RecastTimer.h 	

libnvtristrip_la_SOURCES := \
GFX/nvtristrip/NvTriStrip.cpp \
GFX/nvtristrip/NvTriStripObjects.cpp \
GFX/nvtristrip/VertexCache.cpp \
GFX/nvtristrip/VertexCache.h 
#GFX/nvtristrip/NvTriStripObjects.h \
#GFX/nvtristrip/NvTriStrip.h \

lipng_la_SOURCES := \
GFX/png/png.c \
GFX/png/png.h \
GFX/png/pngconf.h \
GFX/png/pngerror.c \
GFX/png/pnggccrd.c \
GFX/png/pngget.c \
GFX/png/pngmem.c \
GFX/png/pngpread.c \
GFX/png/pngread.c \
GFX/png/pngrio.c \
GFX/png/pngrtran.c \
GFX/png/pngrutil.c \
GFX/png/pngset.c \
GFX/png/pngtrans.c \
GFX/png/pngvcrd.c \
GFX/png/pngwio.c \
GFX/png/pngwrite.c \
GFX/png/pngwtran.c \
GFX/png/pngwutil.c 

libttf_la_SOURCES := \
GFX/ttf/stb_truetype.cpp \
GFX/ttf/stb_truetype.h 

libzlib_la_SOURCES := \
GFX/zlib/adler32.c \
GFX/zlib/compress.c \
GFX/zlib/crc32.c \
GFX/zlib/crc32.h \
GFX/zlib/crypt.h \
GFX/zlib/deflate.c \
GFX/zlib/deflate.h \
GFX/zlib/gzio.c \
GFX/zlib/infback.c \
GFX/zlib/inffast.c \
GFX/zlib/inffast.h \
GFX/zlib/inffixed.h \
GFX/zlib/inflate.c \
GFX/zlib/inflate.h \
GFX/zlib/inftrees.c \
GFX/zlib/inftrees.h \
GFX/zlib/ioapi.c \
GFX/zlib/ioapi.h \
GFX/zlib/trees.c \
GFX/zlib/trees.h \
GFX/zlib/uncompr.c \
GFX/zlib/unzip.c \
GFX/zlib/unzip.h \
GFX/zlib/zconf.h \
GFX/zlib/zlib.h \
GFX/zlib/zutil.c \
GFX/zlib/zutil.h 

libvorbis_la_SOURCES := \
		GFX/vorbis/analysis.c \
		GFX/vorbis/backends.h \
		GFX/vorbis/bitrate.c \
		GFX/vorbis/bitrate.h \
		GFX/vorbis/bitwise.c \
		GFX/vorbis/block.c \
		GFX/vorbis/codebook.c \
		GFX/vorbis/codebook.h \
		GFX/vorbis/codec_internal.h \
		GFX/vorbis/codec.h \
		GFX/vorbis/envelope.c \
		GFX/vorbis/envelope.h \
		GFX/vorbis/floor0.c \
		GFX/vorbis/floor1.c \
		GFX/vorbis/framing.c \
		GFX/vorbis/highlevel.h \
		GFX/vorbis/info.c \
		GFX/vorbis/lookup_data.h \
		GFX/vorbis/lookup.c \
		GFX/vorbis/lookup.h \
		GFX/vorbis/lpc.c \
		GFX/vorbis/lpc.h \
		GFX/vorbis/lsp.c \
		GFX/vorbis/lsp.h \
		GFX/vorbis/mapping0.c \
		GFX/vorbis/masking.h \
		GFX/vorbis/mdct.c \
		GFX/vorbis/mdct.h \
		GFX/vorbis/misc.h \
		GFX/vorbis/ogg.h \
		GFX/vorbis/os_types.h \
		GFX/vorbis/os.h \
		GFX/vorbis/psy.c \
		GFX/vorbis/psy.h \
		GFX/vorbis/registry.c \
		GFX/vorbis/registry.h \
		GFX/vorbis/res0.c \
		GFX/vorbis/scales.h \
		GFX/vorbis/sharedbook.c \
		GFX/vorbis/smallft.c \
		GFX/vorbis/smallft.h \
		GFX/vorbis/synthesis.c \
		GFX/vorbis/vorbisenc.h \
		GFX/vorbis/vorbisfile.c \
		GFX/vorbis/vorbisfile.h \
		GFX/vorbis/window.c \
		GFX/vorbis/window.h

libGFX_la_SOURCES := \
		GFX/audio.cpp \
		GFX/audio.h \
		GFX/font.cpp \
		GFX/font.h \
		GFX/gfx.cpp \
		GFX/gfx.h \
		GFX/light.cpp \
		GFX/light.h \
		GFX/matrix.cpp \
		GFX/matrix.h \
		GFX/md5.cpp \
		GFX/md5.h \
		GFX/types.h \
		GFX/memory.cpp \
		GFX/memory.h \
		GFX/navigation.cpp \
		GFX/navigation.h \
		GFX/obj.cpp \
		GFX/obj.h \
		GFX/program.cpp \
		GFX/program.h \
		GFX/shader.cpp \
		GFX/shader.h \
		GFX/sound.cpp \
		GFX/sound.h \
		GFX/texture.cpp \
		GFX/texture.h \
		GFX/thread.cpp \
		GFX/thread.h \
		GFX/utils.cpp \
		GFX/utils.h \
		GFX/vector.cpp \
		GFX/vector.h 				

LOCAL_SRC_FILES := $(wildcard *.cpp)
LOCAL_SRC_FILES += $(wildcard *.c)
LOCAL_SRC_FILES += \
		$(libGFX_la_SOURCES) \
		$(libBullet_la_SOURCES) \
		$(libdetour_la_SOURCES) \
		$(libopenal_la_SOURCES) \
		$(librecast_la_SOURCES) \
		$(lipng_la_SOURCES) \
		$(libttf_la_SOURCES) \
		$(libzlib_la_SOURCES) \
		$(libvorbis_la_SOURCES) \
		$(libnvtristrip_la_SOURCES) 


LOCAL_ARM_MODE   := arm

LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -O3 -DANDROID_NDK -DDISABLE_IMPORTGL

LOCAL_LDLIBS :=  -lstdc++ -lc -lm -llog -landroid -ldl -lGLESv2 -lEGL -lOpenSLES
LOCAL_STATIC_LIBRARIES := nv_and_util nv_egl_util nv_bitfont nv_math nv_glesutil nv_hhdds nv_log nv_shader nv_file nv_thread

include $(BUILD_SHARED_LIBRARY)

$(call import-add-path, ../../../libs/jni)

$(call import-module,nv_and_util)
$(call import-module,nv_egl_util)
$(call import-module,nv_bitfont)
$(call import-module,nv_math)
$(call import-module,nv_glesutil)
$(call import-module,nv_hhdds)
$(call import-module,nv_log)
$(call import-module,nv_shader)
$(call import-module,nv_file)
$(call import-module,nv_thread)
