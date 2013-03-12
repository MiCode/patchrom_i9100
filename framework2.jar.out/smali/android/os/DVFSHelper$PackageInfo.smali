.class public final Landroid/os/DVFSHelper$PackageInfo;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageInfo"
.end annotation


# instance fields
.field public final mIsSourceCodeAvailable:Z

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "isSourceCodeAvailable"

    .prologue
    .line 359
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Landroid/os/DVFSHelper$PackageInfo;->mName:Ljava/lang/String;

    .line 361
    iput-boolean p2, p0, Landroid/os/DVFSHelper$PackageInfo;->mIsSourceCodeAvailable:Z

    .line 362
    return-void
.end method
