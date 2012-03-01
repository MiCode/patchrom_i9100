.class Lcom/android/phone/DeleteFdnContactScreen$2;
.super Ljava/lang/Object;
.source "DeleteFdnContactScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DeleteFdnContactScreen;->handleResult(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DeleteFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/DeleteFdnContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/phone/DeleteFdnContactScreen$2;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen$2;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/DeleteFdnContactScreen;->finish()V

    .line 194
    return-void
.end method
