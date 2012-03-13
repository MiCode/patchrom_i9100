.class Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$1;
.super Ljava/lang/Object;
.source "VideoCallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$1;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$1;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->callbarring_password:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$000(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$1;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$1;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    const v2, 0x7f0700a3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$100(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$1;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSkipCallBarringReq:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$202(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;Z)Z

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$1;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$400(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$1;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$300(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$1;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #calls: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setCallBarring(I)V
    invoke-static {v0, v3}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$500(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;I)V

    goto :goto_0
.end method
