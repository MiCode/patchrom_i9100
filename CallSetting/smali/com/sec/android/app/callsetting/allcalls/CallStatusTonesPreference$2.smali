.class Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$2;
.super Ljava/lang/Object;
.source "CallStatusTonesPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, value:I
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->access$000(Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    move v0, v1

    .line 103
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;

    invoke-virtual {v3}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_conn_tone"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->access$000(Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_1

    move v0, v1

    .line 107
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;

    invoke-virtual {v3}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "min_minder"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->access$000(Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;)[Z

    move-result-object v3

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    move v0, v1

    .line 111
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_end_tone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v0, v2

    .line 106
    goto :goto_1

    :cond_2
    move v0, v2

    .line 110
    goto :goto_2
.end method
