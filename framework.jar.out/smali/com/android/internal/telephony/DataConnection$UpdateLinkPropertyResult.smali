.class public Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateLinkPropertyResult"
.end annotation


# instance fields
.field public newLp:Landroid/net/LinkProperties;

.field public oldLp:Landroid/net/LinkProperties;

.field public setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;


# direct methods
.method public constructor <init>(Landroid/net/LinkProperties;)V
    .locals 1
    .parameter "curLp"

    .prologue
    .line 613
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 610
    sget-object v0, Lcom/android/internal/telephony/DataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataCallState$SetupResult;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 614
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    .line 615
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 616
    return-void
.end method
