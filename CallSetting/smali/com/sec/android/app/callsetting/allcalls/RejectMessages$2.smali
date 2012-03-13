.class Lcom/sec/android/app/callsetting/allcalls/RejectMessages$2;
.super Ljava/lang/Object;
.source "RejectMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/RejectMessages;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/RejectMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectMessages;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectMessages;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->access$000(Lcom/sec/android/app/callsetting/allcalls/RejectMessages;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMessages$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectMessages;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/RejectMessages;->mCreateEdit:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 247
    return-void
.end method
