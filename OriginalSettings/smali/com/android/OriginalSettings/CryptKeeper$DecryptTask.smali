.class Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/CryptKeeper;Lcom/android/OriginalSettings/CryptKeeper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;-><init>(Lcom/android/OriginalSettings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "params"

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    #calls: Lcom/android/OriginalSettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/OriginalSettings/CryptKeeper;->access$000(Lcom/android/OriginalSettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 131
    .local v1, service:Landroid/os/storage/IMountService;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 134
    :goto_0
    return-object v2

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    const-string v3, "Error while decrypting..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x1e

    .line 140
    const-string v0, "CryptKeeper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failedAttempts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    const-class v2, Lcom/android/OriginalSettings/CryptKeeper$Blank;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/CryptKeeper;->finish()V

    .line 148
    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 163
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    .line 153
    invoke-static {v3}, Lcom/android/OriginalSettings/CryptKeeper;->access$102(I)I

    .line 154
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    #calls: Lcom/android/OriginalSettings/CryptKeeper;->cooldown()V
    invoke-static {v0}, Lcom/android/OriginalSettings/CryptKeeper;->access$200(Lcom/android/OriginalSettings/CryptKeeper;)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    const v1, 0x7f0b0627

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    #getter for: Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/OriginalSettings/CryptKeeper;->access$300(Lcom/android/OriginalSettings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
