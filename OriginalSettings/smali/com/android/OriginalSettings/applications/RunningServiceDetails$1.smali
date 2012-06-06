.class Lcom/android/OriginalSettings/applications/RunningServiceDetails$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/applications/RunningServiceDetails;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/applications/RunningServiceDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails$1;->this$0:Lcom/android/OriginalSettings/applications/RunningServiceDetails;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails$1;->this$0:Lcom/android/OriginalSettings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 415
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 418
    :cond_0
    return-void
.end method
