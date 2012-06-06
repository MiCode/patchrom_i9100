.class Lcom/android/OriginalSettings/CryptKeeper$2;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/CryptKeeper;->showFactoryReset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/OriginalSettings/CryptKeeper$2;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper$2;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    .line 371
    return-void
.end method
