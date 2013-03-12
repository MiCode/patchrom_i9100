.class public Landroid/app/ActivityOptions;
.super Ljava/lang/Object;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$OnAnimationStartedListener;
    }
.end annotation


# static fields
.field public static final ANIM_CUSTOM:I = 0x1

.field public static final ANIM_NONE:I = 0x0

.field public static final ANIM_SCALE_UP:I = 0x2

.field public static final ANIM_THUMBNAIL:I = 0x3

.field public static final ANIM_THUMBNAIL_DELAYED:I = 0x4

.field public static final KEY_ANIM_ENTER_RES_ID:Ljava/lang/String; = "android:animEnterRes"

.field public static final KEY_ANIM_EXIT_RES_ID:Ljava/lang/String; = "android:animExitRes"

.field public static final KEY_ANIM_START_HEIGHT:Ljava/lang/String; = "android:animStartHeight"

.field public static final KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android:animStartListener"

.field public static final KEY_ANIM_START_WIDTH:Ljava/lang/String; = "android:animStartWidth"

.field public static final KEY_ANIM_START_X:Ljava/lang/String; = "android:animStartX"

.field public static final KEY_ANIM_START_Y:Ljava/lang/String; = "android:animStartY"

.field public static final KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android:animThumbnail"

.field public static final KEY_ANIM_TYPE:Ljava/lang/String; = "android:animType"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "android:packageName"


# instance fields
.field private mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private mAnimationType:I

.field private mCustomEnterResId:I

.field private mCustomExitResId:I

.field private mPackageName:Ljava/lang/String;

.field private mStartHeight:I

.field private mStartWidth:I

.field private mStartX:I

.field private mStartY:I

.field private mThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 306
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .parameter "opts"

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 311
    const-string v0, "android:packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 312
    const-string v0, "android:animType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 313
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 314
    const-string v0, "android:animEnterRes"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 315
    const-string v0, "android:animExitRes"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 316
    const-string v0, "android:animStartListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 319
    const-string v0, "android:animStartX"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 320
    const-string v0, "android:animStartY"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 321
    const-string v0, "android:animStartWidth"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mStartWidth:I

    .line 322
    const-string v0, "android:animStartHeight"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mStartHeight:I

    goto :goto_0

    .line 323
    :cond_2
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 325
    :cond_3
    const-string v0, "android:animThumbnail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 326
    const-string v0, "android:animStartX"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 327
    const-string v0, "android:animStartY"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 328
    const-string v0, "android:animStartListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0
.end method

.method public static abort(Landroid/os/Bundle;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 395
    if-eqz p0, :cond_0

    .line 396
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 398
    :cond_0
    return-void
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    .locals 1
    .parameter "context"
    .parameter "enterResId"
    .parameter "exitResId"

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-static {p0, p1, p2, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 2
    .parameter "context"
    .parameter "enterResId"
    .parameter "exitResId"
    .parameter "handler"
    .parameter "listener"

    .prologue
    .line 154
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 155
    .local v0, opts:Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 156
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 157
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 158
    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 159
    invoke-direct {v0, p3, p4}, Landroid/app/ActivityOptions;->setListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 160
    return-object v0
.end method

.method public static makeDelayedThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 6
    .parameter "source"
    .parameter "thumbnail"
    .parameter "startX"
    .parameter "startY"
    .parameter "listener"

    .prologue
    .line 288
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 4
    .parameter "source"
    .parameter "startX"
    .parameter "startY"
    .parameter "startWidth"
    .parameter "startHeight"

    .prologue
    const/4 v3, 0x2

    .line 209
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 210
    .local v0, opts:Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 211
    iput v3, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 212
    new-array v1, v3, [I

    .line 213
    .local v1, pts:[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 214
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 215
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 216
    iput p3, v0, Landroid/app/ActivityOptions;->mStartWidth:I

    .line 217
    iput p4, v0, Landroid/app/ActivityOptions;->mStartHeight:I

    .line 218
    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;
    .locals 1
    .parameter "source"
    .parameter "thumbnail"
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 6
    .parameter "source"
    .parameter "thumbnail"
    .parameter "startX"
    .parameter "startY"
    .parameter "listener"

    .prologue
    .line 265
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method private static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 3
    .parameter "source"
    .parameter "thumbnail"
    .parameter "startX"
    .parameter "startY"
    .parameter "listener"
    .parameter "delayed"

    .prologue
    .line 294
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 295
    .local v0, opts:Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 296
    if-eqz p5, :cond_0

    const/4 v2, 0x4

    :goto_0
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 297
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 298
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 299
    .local v1, pts:[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 300
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 301
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/app/ActivityOptions;->setListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 303
    return-object v0

    .line 296
    .end local v1           #pts:[I
    :cond_0
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private setListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 3
    .parameter "handler"
    .parameter "listener"

    .prologue
    .line 164
    if-eqz p2, :cond_0

    .line 165
    move-object v1, p1

    .line 166
    .local v1, h:Landroid/os/Handler;
    move-object v0, p2

    .line 167
    .local v0, finalListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;
    new-instance v2, Landroid/app/ActivityOptions$1;

    invoke-direct {v2, p0, v1, v0}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v2, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 177
    .end local v0           #finalListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v1           #h:Landroid/os/Handler;
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 387
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAnimationType()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    return v0
.end method

.method public getCustomEnterResId()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    return v0
.end method

.method public getCustomExitResId()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    return v0
.end method

.method public getOnAnimationStartListener()Landroid/os/IRemoteCallback;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartHeight()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Landroid/app/ActivityOptions;->mStartHeight:I

    return v0
.end method

.method public getStartWidth()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Landroid/app/ActivityOptions;->mStartWidth:I

    return v0
.end method

.method public getStartX()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    return v0
.end method

.method public getStartY()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 463
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 464
    .local v0, b:Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 465
    const-string v2, "android:packageName"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_0
    iget v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    packed-switch v2, :pswitch_data_0

    .line 492
    :goto_0
    return-object v0

    .line 469
    :pswitch_0
    const-string v2, "android:animType"

    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 470
    const-string v2, "android:animEnterRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    const-string v2, "android:animExitRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 472
    const-string v2, "android:animStartListener"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_1

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 476
    :pswitch_1
    const-string v1, "android:animType"

    iget v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 477
    const-string v1, "android:animStartX"

    iget v2, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 478
    const-string v1, "android:animStartY"

    iget v2, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 479
    const-string v1, "android:animStartWidth"

    iget v2, p0, Landroid/app/ActivityOptions;->mStartWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    const-string v1, "android:animStartHeight"

    iget v2, p0, Landroid/app/ActivityOptions;->mStartHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 484
    :pswitch_2
    const-string v2, "android:animType"

    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    const-string v2, "android:animThumbnail"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 486
    const-string v2, "android:animStartX"

    iget v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    const-string v2, "android:animStartY"

    iget v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 488
    const-string v2, "android:animStartListener"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_2

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/app/ActivityOptions;)V
    .locals 3
    .parameter "otherOptions"

    .prologue
    const/4 v2, 0x0

    .line 406
    iget-object v0, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 409
    :cond_0
    iget v0, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    packed-switch v0, :pswitch_data_0

    .line 452
    :goto_0
    return-void

    .line 411
    :pswitch_0
    iget v0, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 412
    iget v0, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 413
    iget v0, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 414
    iput-object v2, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 415
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    .line 417
    :try_start_0
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 421
    :cond_1
    :goto_1
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    .line 424
    :pswitch_1
    iget v0, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 425
    iget v0, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 426
    iget v0, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 427
    iget v0, p1, Landroid/app/ActivityOptions;->mStartWidth:I

    iput v0, p0, Landroid/app/ActivityOptions;->mStartWidth:I

    .line 428
    iget v0, p1, Landroid/app/ActivityOptions;->mStartHeight:I

    iput v0, p0, Landroid/app/ActivityOptions;->mStartHeight:I

    .line 429
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_2

    .line 431
    :try_start_1
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 435
    :cond_2
    :goto_2
    iput-object v2, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    .line 439
    :pswitch_2
    iget v0, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 440
    iget-object v0, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 441
    iget v0, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 442
    iget v0, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 443
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_3

    .line 445
    :try_start_2
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 449
    :cond_3
    :goto_3
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    goto :goto_3

    .line 432
    :catch_1
    move-exception v0

    goto :goto_2

    .line 418
    :catch_2
    move-exception v0

    goto :goto_1

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
