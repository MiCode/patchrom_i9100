.class public Landroid/hardware/Camera$Face;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1371
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1425
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/Camera$Face;->id:I

    .line 1434
    iput-object v1, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 1443
    iput-object v1, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 1452
    iput-object v1, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 1372
    return-void
.end method
