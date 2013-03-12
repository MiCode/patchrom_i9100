.class Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
.super Ljava/util/ArrayList;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NeededUriGrants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final flags:I

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "_targetPkg"
    .parameter "_targetUid"
    .parameter "_flags"

    .prologue
    .line 5571
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 5572
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->targetPkg:Ljava/lang/String;

    .line 5573
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->targetUid:I

    .line 5574
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->flags:I

    .line 5575
    return-void
.end method
