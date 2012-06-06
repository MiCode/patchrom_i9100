.class Lcom/android/OriginalSettings/encryption/CryptSDCardSettings$2;
.super Ljava/lang/Object;
.source "CryptSDCardSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;

    #calls: Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->applyEncryptionUpdates()V
    invoke-static {v0}, Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;->access$500(Lcom/android/OriginalSettings/encryption/CryptSDCardSettings;)V

    .line 154
    return-void
.end method
