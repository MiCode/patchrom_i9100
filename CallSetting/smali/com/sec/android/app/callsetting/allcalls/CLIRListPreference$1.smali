.class Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$1;
.super Ljava/lang/Object;
.source "CLIRListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mSelectedCLIRValue:I
    invoke-static {v1, p2}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->access$102(Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;I)I

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, value:I
    packed-switch p2, :pswitch_data_0

    .line 100
    const/4 v0, 0x0

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->access$202(Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;I)I

    .line 106
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 107
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 109
    return-void

    .line 91
    :pswitch_0
    const/4 v0, 0x2

    .line 92
    goto :goto_0

    .line 95
    :pswitch_1
    const/4 v0, 0x1

    .line 96
    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
