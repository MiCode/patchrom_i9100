.class public Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
.super Ljava/lang/Object;
.source "ResourceIDMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResourceIDSet"
.end annotation


# instance fields
.field public mDim:I

.field public mNormal:I

.field public mPress:I

.field public mTitle:I

.field final synthetic this$0:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V
    .locals 0
    .parameter
    .parameter "normal"
    .parameter "press"
    .parameter "dim"
    .parameter "title"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->this$0:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p2, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 41
    iput p3, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 42
    iput p4, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 43
    iput p5, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 44
    return-void
.end method
