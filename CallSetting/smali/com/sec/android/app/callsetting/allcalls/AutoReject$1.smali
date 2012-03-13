.class Lcom/sec/android/app/callsetting/allcalls/AutoReject$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoReject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/AutoReject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/AutoReject;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/AutoReject;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoReject;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 85
    .local v2, state:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoReject;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mAutoRejectNumber:Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->access$000(Lcom/sec/android/app/callsetting/allcalls/AutoReject;)Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->setEnabled(Z)V

    .line 87
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoReject;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mBlackList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->access$100(Lcom/sec/android/app/callsetting/allcalls/AutoReject;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 88
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoReject;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mAutoRejectNumber:Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->access$000(Lcom/sec/android/app/callsetting/allcalls/AutoReject;)Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 89
    .local v1, dlg:Landroid/app/Dialog;
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 97
    .end local v1           #dlg:Landroid/app/Dialog;
    .end local v2           #state:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local v2       #state:Ljava/lang/Boolean;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoReject;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mAutoRejectNumber:Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->access$000(Lcom/sec/android/app/callsetting/allcalls/AutoReject;)Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->setEnabled(Z)V

    .line 94
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoReject$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoReject;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoReject;->mBlackList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/AutoReject;->access$100(Lcom/sec/android/app/callsetting/allcalls/AutoReject;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
