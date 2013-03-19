.class public Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;
.super Ljava/lang/Object;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CeSecCameraParameter"
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "value"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p2, p0, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;->mKey:Ljava/lang/String;

    .line 363
    iput-object p3, p0, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;->mValue:Ljava/lang/String;

    .line 364
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$CeSecCameraParameter;->mValue:Ljava/lang/String;

    return-object v0
.end method
