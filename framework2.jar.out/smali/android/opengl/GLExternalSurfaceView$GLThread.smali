.class Landroid/opengl/GLExternalSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLExternalSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLExternalSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mEglCreateSurfaceFailCnt:I

.field private mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Landroid/opengl/GLExternalSurfaceView;


# direct methods
.method constructor <init>(Landroid/opengl/GLExternalSurfaceView;Landroid/opengl/GLExternalSurfaceView$Renderer;)V
    .locals 3
    .parameter
    .parameter "renderer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1065
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    .line 1066
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1067
    iput v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    .line 1068
    iput v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    .line 1069
    iput-boolean v2, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    .line 1070
    iput v2, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    .line 1071
    iput-object p2, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    .line 1072
    iput v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    .line 1073
    return-void
.end method

.method static synthetic access$1202(Landroid/opengl/GLExternalSurfaceView$GLThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1064
    iput-boolean p1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1114
    new-instance v13, Landroid/opengl/GLExternalSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-direct {v13, v14}, Landroid/opengl/GLExternalSurfaceView$EglHelper;-><init>(Landroid/opengl/GLExternalSurfaceView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    .line 1115
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1116
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1118
    const/4 v6, 0x0

    .line 1119
    .local v6, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v2, 0x0

    .line 1120
    .local v2, createEglContext:Z
    const/4 v3, 0x0

    .line 1121
    .local v3, createEglSurface:Z
    const/4 v8, 0x0

    .line 1122
    .local v8, lostEglContext:Z
    const/4 v9, 0x0

    .line 1123
    .local v9, sizeChanged:Z
    const/4 v12, 0x0

    .line 1124
    .local v12, wantRenderNotification:Z
    const/4 v4, 0x0

    .line 1125
    .local v4, doRenderNotification:Z
    const/4 v1, 0x0

    .line 1126
    .local v1, askedToReleaseEglContext:Z
    const/4 v11, 0x0

    .line 1127
    .local v11, w:I
    const/4 v7, 0x0

    .line 1128
    .local v7, h:I
    const/4 v5, 0x0

    .line 1131
    .local v5, event:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1133
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v13, :cond_1

    .line 1134
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1364
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    .line 1365
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1366
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1367
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1134
    return-void

    .line 1137
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1138
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/Runnable;

    move-object v5, v0

    .line 1288
    :goto_2
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1290
    if-eqz v5, :cond_12

    .line 1291
    :try_start_4
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1292
    const/4 v5, 0x0

    .line 1293
    goto :goto_0

    .line 1143
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    if-eq v13, v15, :cond_3

    .line 1144
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    .line 1145
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1147
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mPaused is now "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v13, :cond_4

    .line 1154
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "releasing EGL context because asked to tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1157
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1158
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1159
    const/4 v1, 0x1

    .line 1163
    :cond_4
    if-eqz v8, :cond_5

    .line 1164
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1165
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1166
    const/4 v8, 0x0

    .line 1170
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-eqz v13, :cond_8

    .line 1172
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "releasing EGL surface because paused tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1175
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mPreserveEGLContextOnPause:Z
    invoke-static {v13}, Landroid/opengl/GLExternalSurfaceView;->access$900(Landroid/opengl/GLExternalSurfaceView;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1176
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1178
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "releasing EGL context because paused tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_7
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1182
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->finish()V

    .line 1184
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "terminating EGL because paused tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v13, :cond_a

    .line 1192
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "noticed surfaceView surface lost tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_9

    .line 1195
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1197
    :cond_9
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1198
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1202
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v13, :cond_b

    .line 1204
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "noticed surfaceView surface acquired tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1207
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1210
    :cond_b
    if-eqz v4, :cond_c

    .line 1212
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sending render notification tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/4 v12, 0x0

    .line 1215
    const/4 v4, 0x0

    .line 1216
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    .line 1217
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1221
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->readyToDraw()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1224
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v13, :cond_d

    .line 1225
    if-eqz v1, :cond_f

    .line 1226
    const/4 v1, 0x0

    .line 1241
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v13, :cond_e

    .line 1242
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1243
    const/4 v3, 0x1

    .line 1244
    const/4 v9, 0x1

    .line 1247
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_11

    .line 1248
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z
    invoke-static {v13}, Landroid/opengl/GLExternalSurfaceView;->access$1000(Landroid/opengl/GLExternalSurfaceView;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1249
    const/4 v9, 0x1

    .line 1250
    move-object/from16 v0, p0

    iget v11, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    .line 1251
    move-object/from16 v0, p0

    iget v7, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    .line 1252
    const/4 v12, 0x1

    .line 1254
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "noticing that we want render notification tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    const/4 v15, 0x0

    #setter for: Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z
    invoke-static {v13, v15}, Landroid/opengl/GLExternalSurfaceView;->access$1002(Landroid/opengl/GLExternalSurfaceView;Z)Z

    .line 1268
    :goto_4
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 1288
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1364
    :catchall_1
    move-exception v13

    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    .line 1365
    :try_start_7
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1366
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1367
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1364
    throw v13

    .line 1227
    :cond_f
    :try_start_8
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Landroid/opengl/GLExternalSurfaceView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v13

    if-eqz v13, :cond_d

    .line 1229
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->start()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1234
    const/4 v13, 0x1

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1235
    const/4 v2, 0x1

    .line 1237
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_3

    .line 1230
    :catch_0
    move-exception v10

    .line 1231
    .local v10, t:Ljava/lang/RuntimeException;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLExternalSurfaceView$GLThread;)V

    .line 1232
    throw v10

    .line 1266
    .end local v10           #t:Ljava/lang/RuntimeException;
    :cond_10
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_4

    .line 1275
    :cond_11
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "waiting tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mHaveEglContext: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mHaveEglSurface: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mPaused: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mHasSurface: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mWaitingForSurface: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mWidth: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mHeight: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mRequestRender: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mRenderMode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 1296
    :cond_12
    if-eqz v3, :cond_14

    .line 1298
    :try_start_b
    const-string v13, "GLThread"

    const-string v14, "egl createSurface"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v14}, Landroid/opengl/GLExternalSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v6, v0

    .line 1301
    if-nez v6, :cond_13

    .line 1304
    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t create a surface "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    move-object/from16 v0, p0

    iget v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    goto/16 :goto_0

    .line 1309
    :cond_13
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    .line 1310
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1311
    const/4 v3, 0x0

    .line 1314
    :cond_14
    if-eqz v2, :cond_15

    .line 1316
    const-string v13, "GLThread"

    const-string v14, "onSurfaceCreated"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    iget-object v14, v14, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v13, v6, v14}, Landroid/opengl/GLExternalSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1319
    const/4 v2, 0x0

    .line 1322
    :cond_15
    if-eqz v9, :cond_16

    .line 1324
    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onSurfaceChanged("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    invoke-interface {v13, v6, v11, v7}, Landroid/opengl/GLExternalSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1327
    const/4 v9, 0x0

    .line 1330
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    if-nez v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Surface;->isValid()Z

    move-result v13

    if-nez v13, :cond_18

    .line 1331
    :cond_17
    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[onDrawFrame] mRequestPaused = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ,surface.valid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v15}, Landroid/opengl/GLExternalSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Surface;->isValid()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1339
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    invoke-interface {v13, v6}, Landroid/opengl/GLExternalSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1342
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    if-nez v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Surface;->isValid()Z

    move-result v13

    if-nez v13, :cond_1a

    .line 1343
    :cond_19
    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[egl.swap] mRequestPaused = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ,surface.valid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v15}, Landroid/opengl/GLExternalSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Surface;->isValid()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1348
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->swap()Z

    move-result v13

    if-nez v13, :cond_1b

    .line 1350
    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "egl context lost tid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1352
    const/4 v8, 0x1

    .line 1355
    :cond_1b
    if-eqz v12, :cond_0

    .line 1356
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1367
    :catchall_2
    move-exception v13

    :try_start_c
    monitor-exit v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v13

    :catchall_3
    move-exception v13

    :try_start_d
    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v13
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1376
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1107
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->finish()V

    .line 1109
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1110
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLExternalSurfaceView$GLThread;)V

    .line 1112
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1096
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1097
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1098
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->destroySurface()V

    .line 1100
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1372
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1392
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1393
    :try_start_0
    iget v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 1439
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1441
    :try_start_0
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    .line 1444
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1445
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    .line 1447
    const-string v1, "Main thread"

    const-string v3, "onPause waiting for mPaused."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    :try_start_1
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1451
    :catch_0
    move-exception v0

    .line 1452
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1455
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1456
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 1459
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1461
    :try_start_0
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    .line 1464
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    .line 1465
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    .line 1466
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1467
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    .line 1469
    const-string v1, "Main thread"

    const-string v3, "onResume waiting for !mPaused."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1472
    :try_start_1
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1473
    :catch_0
    move-exception v0

    .line 1474
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1477
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1478
    return-void
.end method

.method public onWindowResize(II)V
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1481
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1482
    :try_start_0
    iput p1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    .line 1483
    iput p2, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    .line 1484
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    const/4 v3, 0x1

    #setter for: Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z
    invoke-static {v1, v3}, Landroid/opengl/GLExternalSurfaceView;->access$1002(Landroid/opengl/GLExternalSurfaceView;Z)Z

    .line 1485
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    .line 1486
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    .line 1487
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1491
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;
    invoke-static {v1}, Landroid/opengl/GLExternalSurfaceView;->access$1100(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;
    invoke-static {v1}, Landroid/opengl/GLExternalSurfaceView;->access$1100(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLExternalSurfaceView$GLThread;->ableToDraw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1493
    const-string v1, "Main thread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowResize waiting for render complete from tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;
    invoke-static {v4}, Landroid/opengl/GLExternalSurfaceView;->access$1100(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1496
    :try_start_1
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1497
    :catch_0
    move-exception v0

    .line 1498
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1501
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1502
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1530
    if-nez p1, :cond_0

    .line 1531
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1533
    :cond_0
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1534
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1536
    monitor-exit v1

    .line 1537
    return-void

    .line 1536
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1507
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1508
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldExit:Z

    .line 1509
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1510
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1512
    :try_start_1
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1513
    :catch_0
    move-exception v0

    .line 1514
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1517
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1518
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1521
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1522
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1523
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1398
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1399
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    .line 1400
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1401
    monitor-exit v1

    .line 1402
    return-void

    .line 1401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1079
    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLExternalSurfaceView$GLThread;)V

    .line 1089
    return-void

    .line 1087
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLExternalSurfaceView$GLThread;)V

    throw v0

    .line 1084
    :catch_0
    move-exception v0

    .line 1087
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    goto :goto_0
.end method

.method public setRenderMode(I)V
    .locals 2
    .parameter "renderMode"

    .prologue
    .line 1382
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1383
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1385
    :cond_1
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1386
    :try_start_0
    iput p1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    .line 1387
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1388
    monitor-exit v1

    .line 1389
    return-void

    .line 1388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 6

    .prologue
    .line 1405
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1407
    :try_start_0
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "surfaceCreated tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    .line 1410
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1411
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1413
    :try_start_1
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1414
    :catch_0
    move-exception v0

    .line 1415
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1418
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1419
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 6

    .prologue
    .line 1422
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1424
    :try_start_0
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "surfaceDestroyed tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    .line 1427
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1428
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1430
    :try_start_1
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1431
    :catch_0
    move-exception v0

    .line 1432
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1435
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1436
    return-void
.end method
