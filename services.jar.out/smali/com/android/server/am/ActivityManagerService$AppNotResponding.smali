.class final Lcom/android/server/am/ActivityManagerService$AppNotResponding;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppNotResponding"
.end annotation


# instance fields
.field private final mAnnotation:Ljava/lang/String;

.field private final mApp:Lcom/android/server/am/ProcessRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "app"
    .parameter "annotation"

    .prologue
    .line 3092
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppNotResponding;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3093
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$AppNotResponding;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 3094
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$AppNotResponding;->mAnnotation:Ljava/lang/String;

    .line 3095
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3099
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppNotResponding;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppNotResponding;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppNotResponding;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3100
    return-void
.end method
