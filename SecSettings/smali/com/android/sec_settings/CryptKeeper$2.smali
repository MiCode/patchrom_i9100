.class Lcom/android/sec_settings/CryptKeeper$2;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/CryptKeeper;->showFactoryReset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/sec_settings/CryptKeeper$2;->this$0:Lcom/android/sec_settings/CryptKeeper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/sec_settings/CryptKeeper$2;->this$0:Lcom/android/sec_settings/CryptKeeper;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    return-void
.end method
