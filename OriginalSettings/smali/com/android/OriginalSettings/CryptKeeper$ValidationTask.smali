.class Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
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
    .line 166
    iput-object p1, p0, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/CryptKeeper;Lcom/android/OriginalSettings/CryptKeeper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;-><init>(Lcom/android/OriginalSettings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    .line 169
    iget-object v3, p0, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    #calls: Lcom/android/OriginalSettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v3}, Lcom/android/OriginalSettings/CryptKeeper;->access$000(Lcom/android/OriginalSettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 171
    .local v1, service:Landroid/os/storage/IMountService;
    :try_start_0
    const-string v3, "CryptKeeper"

    const-string v5, "Validating encryption state."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v2

    .line 173
    .local v2, state:I
    if-ne v2, v4, :cond_0

    .line 174
    const-string v3, "CryptKeeper"

    const-string v5, "Unexpectedly in CryptKeeper even though there is no encryption."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 180
    .end local v2           #state:I
    :goto_0
    return-object v3

    .line 177
    .restart local v2       #state:I
    :cond_0
    if-nez v2, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 178
    .end local v2           #state:I
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "CryptKeeper"

    const-string v5, "Unable to get encryption state properly"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    #setter for: Lcom/android/OriginalSettings/CryptKeeper;->mValidationComplete:Z
    invoke-static {v0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->access$402(Lcom/android/OriginalSettings/CryptKeeper;Z)Z

    .line 187
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "CryptKeeper"

    const-string v1, "Incomplete, or corrupted encryption detected. Prompting user to wipe."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    #setter for: Lcom/android/OriginalSettings/CryptKeeper;->mEncryptionGoneBad:Z
    invoke-static {v0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->access$502(Lcom/android/OriginalSettings/CryptKeeper;Z)Z

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/OriginalSettings/CryptKeeper;

    #calls: Lcom/android/OriginalSettings/CryptKeeper;->setupUi()V
    invoke-static {v0}, Lcom/android/OriginalSettings/CryptKeeper;->access$600(Lcom/android/OriginalSettings/CryptKeeper;)V

    .line 194
    return-void

    .line 191
    :cond_0
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption state validated. Proceeding to configure UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
