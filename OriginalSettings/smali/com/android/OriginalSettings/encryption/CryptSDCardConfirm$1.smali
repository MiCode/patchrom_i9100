.class Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm$1;
.super Ljava/lang/Object;
.source "CryptSDCardConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm$1;->this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm$1;->this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm;

    iget-object v1, p0, Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm$1;->this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm;

    #getter for: Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm;->mPassword:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm;->access$000(Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm;->applySDEncryption(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm;->access$100(Lcom/android/OriginalSettings/encryption/CryptSDCardConfirm;Ljava/lang/String;)V

    .line 102
    return-void
.end method
