.class Lcom/sec/android/app/fm/MainActivity$19;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3939
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$19;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3942
    const/4 v2, -0x1

    if-ne v2, p2, :cond_0

    .line 3943
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3945
    .local v1, installIntent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.TextToSpeechSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3950
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$19;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3955
    .end local v1           #installIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 3951
    .restart local v1       #installIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 3952
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$19;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0
.end method
