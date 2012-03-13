.class Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$3;
.super Ljava/lang/Object;
.source "AlertOnCallPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 117
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mTTSinstalled:Z
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->access$000(Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mTTSDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->access$100(Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->access$202(Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;I)I

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
