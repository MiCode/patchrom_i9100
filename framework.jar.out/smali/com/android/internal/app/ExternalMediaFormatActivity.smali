.class public Lcom/android/internal/app/ExternalMediaFormatActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ExternalMediaFormatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final POSITIVE_BUTTON:I = -0x1


# instance fields
.field private mPath:Ljava/lang/String;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mPath:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/android/internal/app/ExternalMediaFormatActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ExternalMediaFormatActivity$1;-><init>(Lcom/android/internal/app/ExternalMediaFormatActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ExternalMediaFormatActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method private isSDCard(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v4, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v4, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v3

    .line 139
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 140
    .local v2, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v2

    .line 141
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 142
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    const/4 v3, 0x1

    goto :goto_0

    .line 141
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 120
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    iget-object v2, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolume(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 127
    .local v1, storageVolume:Landroid/os/storage/StorageVolume;
    const-string/jumbo v2, "storage_volume"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    .end local v1           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 134
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->finish()V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 70
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 71
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v3, "storage_volume"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mPath:Ljava/lang/String;

    .line 73
    :cond_1
    const-string/jumbo v3, "storage"

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 76
    const-string v3, "ExternalMediaFormatActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 80
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x108008a

    iput v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 81
    iget-object v3, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mPath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->isSDCard(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    const v3, 0x104056f

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 83
    const v3, 0x1040571

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 88
    :goto_0
    const v3, 0x1040572

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 89
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 90
    const/high16 v3, 0x104

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 91
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->setupAlert()V

    .line 93
    return-void

    .line 85
    :cond_2
    const v3, 0x104056e

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 86
    const v3, 0x1040570

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 112
    iget-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method
