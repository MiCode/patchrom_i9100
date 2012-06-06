.class Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 848
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 851
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V
    invoke-static {v2, v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$1100(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Z)V

    .line 853
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.spp.push"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    #getter for: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$1200(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 855
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    #getter for: Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->access$800(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 857
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 851
    goto :goto_0
.end method
