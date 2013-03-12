.class Landroid/nfc/NfcActivityManager$NfcActivityState;
.super Ljava/lang/Object;
.source "NfcActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcActivityState"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field ndefMessage:Landroid/nfc/NdefMessage;

.field ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

.field onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

.field resumed:Z

.field final synthetic this$0:Landroid/nfc/NfcActivityManager;

.field uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

.field uris:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/nfc/NfcActivityManager;Landroid/app/Activity;)V
    .locals 2
    .parameter
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 119
    iput-object p1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->this$0:Landroid/nfc/NfcActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 114
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 115
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 116
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 117
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 118
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 120
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activity is already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    const-string v0, "android.permission.NFC"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "NFC permission required."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    invoke-virtual {p2}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 134
    iput-object p2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    .line 135
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/nfc/NfcActivityManager;->registerApplication(Landroid/app/Application;)V

    .line 136
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->this$0:Landroid/nfc/NfcActivityManager;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcActivityManager;->unregisterApplication(Landroid/app/Application;)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 140
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    .line 141
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 142
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 143
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 144
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 145
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 150
    .local v3, s:Ljava/lang/StringBuilder;
    iget-object v5, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v5, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v5, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 153
    iget-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .local v0, arr$:[Landroid/net/Uri;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 154
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v0           #arr$:[Landroid/net/Uri;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
