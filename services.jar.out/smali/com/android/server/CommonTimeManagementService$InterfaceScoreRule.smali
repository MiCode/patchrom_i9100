.class Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
.super Ljava/lang/Object;
.source "CommonTimeManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CommonTimeManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterfaceScoreRule"
.end annotation


# instance fields
.field public final mPrefix:Ljava/lang/String;

.field public final mScore:B


# direct methods
.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .parameter "prefix"
    .parameter "score"

    .prologue
    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mPrefix:Ljava/lang/String;

    .line 220
    iput-byte p2, p0, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mScore:B

    .line 221
    return-void
.end method
