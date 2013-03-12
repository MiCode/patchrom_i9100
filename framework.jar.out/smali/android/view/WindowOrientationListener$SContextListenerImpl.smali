.class final Landroid/view/WindowOrientationListener$SContextListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SContextListenerImpl"
.end annotation


# static fields
.field private static scontextRotation:I


# instance fields
.field private final mOrientationListener:Landroid/view/WindowOrientationListener;

.field private mSkiped:Z


# direct methods
.method public constructor <init>(Landroid/view/WindowOrientationListener;)V
    .locals 1
    .parameter "orientationListener"

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mSkiped:Z

    .line 290
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    .line 291
    return-void
.end method


# virtual methods
.method public getProposedRotation()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 294
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSContextAutoRotationListener.getProposedRotation, mSkiped: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mSkiped:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-boolean v3, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mSkiped:Z

    if-ne v3, v6, :cond_0

    .line 296
    iget-object v3, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/view/WindowOrientationListener;->access$100(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 297
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 298
    .local v0, disp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 299
    .local v1, rotation:I
    packed-switch v1, :pswitch_data_0

    .line 317
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/WindowOrientationListener;->access$202(I)I

    .line 321
    :goto_0
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSContextAutoRotationListener.getProposedRotation, sCurrentAppAngle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$200()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$200()I

    move-result v3

    .line 326
    .end local v0           #disp:Landroid/view/Display;
    .end local v1           #rotation:I
    .end local v2           #wm:Landroid/view/WindowManager;
    :goto_1
    return v3

    .line 302
    .restart local v0       #disp:Landroid/view/Display;
    .restart local v1       #rotation:I
    .restart local v2       #wm:Landroid/view/WindowManager;
    :pswitch_0
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/WindowOrientationListener;->access$202(I)I

    goto :goto_0

    .line 306
    :pswitch_1
    invoke-static {v6}, Landroid/view/WindowOrientationListener;->access$202(I)I

    goto :goto_0

    .line 310
    :pswitch_2
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/view/WindowOrientationListener;->access$202(I)I

    goto :goto_0

    .line 314
    :pswitch_3
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/view/WindowOrientationListener;->access$202(I)I

    goto :goto_0

    .line 325
    .end local v0           #disp:Landroid/view/Display;
    .end local v1           #rotation:I
    .end local v2           #wm:Landroid/view/WindowManager;
    :cond_0
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSContextAutoRotationListener.getProposedRotation, Rotation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget v3, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    goto :goto_1

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 331
    iget-object v3, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 332
    .local v3, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 334
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;

    move-result-object v0

    .line 335
    .local v0, autoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result v7

    sput v7, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    .line 336
    const-string v7, "WindowOrientationListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSContextAutoRotationListener.onSContextChanged, Rotation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget v7, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    iget-object v8, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v8, v8, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    if-eq v7, v8, :cond_0

    sget v7, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    if-ltz v7, :cond_0

    .line 341
    iget-object v7, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/view/WindowOrientationListener;->access$100(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "intelligent_rotation_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/view/WindowOrientationListener;->access$100(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "intelligent_screen_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    move v2, v5

    .line 342
    .local v2, intelligent_rotation_enabled:Z
    :goto_1
    if-nez v2, :cond_2

    .line 344
    iput-boolean v6, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mSkiped:Z

    .line 346
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    sget v6, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v5, v6}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_0

    .end local v2           #intelligent_rotation_enabled:Z
    :cond_1
    move v2, v6

    .line 341
    goto :goto_1

    .line 352
    .restart local v2       #intelligent_rotation_enabled:Z
    :cond_2
    const/4 v1, -0x1

    .line 353
    .local v1, fdangle:I
    const/4 v4, 0x0

    .line 354
    .local v4, sf:[Lcom/sec/android/facedetection/SecFace;
    iget-object v7, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v7, v7, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    if-ltz v7, :cond_5

    iget-object v7, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v7, v7, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    const/4 v8, 0x4

    if-ge v7, v8, :cond_5

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$300()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$300()I

    move-result v7

    if-eq v7, v5, :cond_5

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$300()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_5

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$300()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_5

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$300()I

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_5

    .line 362
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$400()Lcom/sec/android/facedetection/FaceDetectionManager;

    move-result-object v7

    if-nez v7, :cond_3

    .line 363
    invoke-static {}, Lcom/sec/android/facedetection/FaceDetectionManager;->getFaceDetectionManager()Lcom/sec/android/facedetection/FaceDetectionManager;

    move-result-object v7

    invoke-static {v7}, Landroid/view/WindowOrientationListener;->access$402(Lcom/sec/android/facedetection/FaceDetectionManager;)Lcom/sec/android/facedetection/FaceDetectionManager;

    .line 365
    :cond_3
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$400()Lcom/sec/android/facedetection/FaceDetectionManager;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 367
    const-string v7, "WindowOrientationListener"

    const-string v8, "fd ++ "

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$400()Lcom/sec/android/facedetection/FaceDetectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/facedetection/FaceDetectionManager;->enable()V

    .line 369
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$400()Lcom/sec/android/facedetection/FaceDetectionManager;

    move-result-object v7

    iget-object v8, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v8, v8, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    sget v9, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/facedetection/FaceDetectionManager;->getFaceInfo(II)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v4

    .line 370
    if-eqz v4, :cond_4

    array-length v7, v4

    if-lez v7, :cond_4

    .line 372
    aget-object v7, v4, v6

    iget v1, v7, Lcom/sec/android/facedetection/SecFace;->orientation:I

    .line 373
    const-string v7, "WindowOrientationListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fd angle= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v6

    iget v9, v9, Lcom/sec/android/facedetection/SecFace;->orientation:I

    rem-int/lit16 v9, v9, 0x168

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iput-boolean v5, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mSkiped:Z

    .line 378
    :cond_4
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$400()Lcom/sec/android/facedetection/FaceDetectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/facedetection/FaceDetectionManager;->disable()V

    .line 379
    const-string v5, "WindowOrientationListener"

    const-string v7, "fd -- "

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_5
    if-eqz v4, :cond_6

    array-length v5, v4

    if-gtz v5, :cond_7

    .line 383
    :cond_6
    iput-boolean v6, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mSkiped:Z

    .line 385
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    sget v6, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v5, v6}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 390
    :goto_2
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    sget v6, Landroid/view/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    iput v6, v5, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    goto/16 :goto_0

    .line 388
    :cond_7
    const-string v5, "WindowOrientationListener"

    const-string v6, "detected face, skip rotation  "

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
