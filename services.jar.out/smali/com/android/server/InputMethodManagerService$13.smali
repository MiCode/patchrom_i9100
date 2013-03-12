.class Lcom/android/server/InputMethodManagerService$13;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showSIPInformationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4387
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$13;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4389
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$13;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->hideSIPInformationDialog()V

    .line 4390
    return-void
.end method
