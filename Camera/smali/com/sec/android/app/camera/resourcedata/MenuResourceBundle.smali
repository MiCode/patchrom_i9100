.class public Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
.super Ljava/lang/Object;
.source "MenuResourceBundle.java"


# instance fields
.field private resourceIds:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 1
    .parameter "ids"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    .line 26
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    .line 27
    return-void
.end method


# virtual methods
.method public getBundleSize()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    array-length v0, v0

    return v0
.end method

.method public getCommandId()I
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getItem(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    aget v0, v0, p1

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
