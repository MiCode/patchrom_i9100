.class final Lcom/android/server/am/ActivityManagerService$ServiceLookupResult;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceLookupResult"
.end annotation


# instance fields
.field final permission:Ljava/lang/String;

.field final record:Lcom/android/server/am/ServiceRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "_record"
    .parameter "_permission"

    .prologue
    .line 10513
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ServiceLookupResult;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10514
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 10515
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$ServiceLookupResult;->permission:Ljava/lang/String;

    .line 10516
    return-void
.end method
