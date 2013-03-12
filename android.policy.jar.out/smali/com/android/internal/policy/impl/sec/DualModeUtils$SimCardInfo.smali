.class Lcom/android/internal/policy/impl/sec/DualModeUtils$SimCardInfo;
.super Ljava/lang/Object;
.source "DualModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/DualModeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimCardInfo"
.end annotation


# instance fields
.field SIMName:Ljava/lang/String;

.field nIconIndex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sIMName"
    .parameter "index"

    .prologue
    .line 645
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 641
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/DualModeUtils$SimCardInfo;->SIMName:Ljava/lang/String;

    .line 642
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/DualModeUtils$SimCardInfo;->nIconIndex:Ljava/lang/String;

    .line 646
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/DualModeUtils$SimCardInfo;->SIMName:Ljava/lang/String;

    .line 647
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/DualModeUtils$SimCardInfo;->nIconIndex:Ljava/lang/String;

    .line 648
    return-void
.end method
