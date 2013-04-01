.class public Lcom/sec/android/app/fm/VolumeSettingTestActivity;
.super Landroid/app/Activity;
.source "VolumeSettingTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field private MAX_REG_COUNT:I

.field VolumePropertyname:Ljava/lang/String;

.field private mApplyButton:Landroid/widget/Button;

.field mDefaultVolumetable:[I

.field mDefaultVolumetable_ste:[I

.field private mEditReg:[Landroid/widget/EditText;

.field mEditTextId:[I

.field private mLoadButton:Landroid/widget/Button;

.field private mTextLabel:[Landroid/widget/TextView;

.field mTextViewId:[I

.field registerName:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const-string v0, "### VolumeSettingTestActivity ###"

    iput-object v0, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->LOG_TAG:Ljava/lang/String;

    .line 26
    iput v3, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->MAX_REG_COUNT:I

    .line 27
    iget v0, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->MAX_REG_COUNT:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mTextLabel:[Landroid/widget/TextView;

    .line 28
    iget v0, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->MAX_REG_COUNT:I

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mEditReg:[Landroid/widget/EditText;

    .line 31
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Volume level 1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Volume level 2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Volume level 3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Volume level 4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Volume level 5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Volume level 6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Volume level 7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Volume level 8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Volume level 9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Volume level 10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Volume level 11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Volume level 12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Volume level 13"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Volume level 14"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Volume level 15"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->registerName:[Ljava/lang/String;

    .line 34
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mTextViewId:[I

    .line 37
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mEditTextId:[I

    .line 40
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mDefaultVolumetable:[I

    .line 41
    const-string v0, "service.brcm.fm.volumetable"

    iput-object v0, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->VolumePropertyname:Ljava/lang/String;

    .line 46
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mDefaultVolumetable_ste:[I

    return-void

    .line 34
    :array_0
    .array-data 0x4
        0xdet 0x0t 0x7t 0x7ft
        0xe0t 0x0t 0x7t 0x7ft
        0xe2t 0x0t 0x7t 0x7ft
        0xe4t 0x0t 0x7t 0x7ft
        0xe6t 0x0t 0x7t 0x7ft
        0xe8t 0x0t 0x7t 0x7ft
        0xeat 0x0t 0x7t 0x7ft
        0xect 0x0t 0x7t 0x7ft
        0xeet 0x0t 0x7t 0x7ft
        0xf0t 0x0t 0x7t 0x7ft
        0xf2t 0x0t 0x7t 0x7ft
        0xf4t 0x0t 0x7t 0x7ft
        0xf6t 0x0t 0x7t 0x7ft
        0xf8t 0x0t 0x7t 0x7ft
        0xfat 0x0t 0x7t 0x7ft
    .end array-data

    .line 37
    :array_1
    .array-data 0x4
        0xdft 0x0t 0x7t 0x7ft
        0xe1t 0x0t 0x7t 0x7ft
        0xe3t 0x0t 0x7t 0x7ft
        0xe5t 0x0t 0x7t 0x7ft
        0xe7t 0x0t 0x7t 0x7ft
        0xe9t 0x0t 0x7t 0x7ft
        0xebt 0x0t 0x7t 0x7ft
        0xedt 0x0t 0x7t 0x7ft
        0xeft 0x0t 0x7t 0x7ft
        0xf1t 0x0t 0x7t 0x7ft
        0xf3t 0x0t 0x7t 0x7ft
        0xf5t 0x0t 0x7t 0x7ft
        0xf7t 0x0t 0x7t 0x7ft
        0xf9t 0x0t 0x7t 0x7ft
        0xfbt 0x0t 0x7t 0x7ft
    .end array-data

    .line 40
    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_3
    .array-data 0x4
        0x4bt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x27t 0x1t 0x0t 0x0t
        0xaet 0x1t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x52t 0x3t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
        0x90t 0x6t 0x0t 0x0t
        0x60t 0x9t 0x0t 0x0t
        0x34t 0xdt 0x0t 0x0t
        0xc0t 0x12t 0x0t 0x0t
        0x96t 0x19t 0x0t 0x0t
        0x1ct 0x25t 0x0t 0x0t
        0xbct 0x34t 0x0t 0x0t
    .end array-data
.end method

.method private applyVolumeTable()V
    .locals 7

    .prologue
    .line 102
    const-string v1, "0"

    .line 105
    .local v1, Volumetable:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v4, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->MAX_REG_COUNT:I

    if-ge v2, v4, :cond_1

    .line 107
    iget-object v4, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mEditReg:[Landroid/widget/EditText;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, ret:Ljava/lang/String;
    const-string v4, "N/A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    const-string v4, "Fill the volumetable completly ~!!"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 120
    .end local v3           #ret:Ljava/lang/String;
    :goto_1
    return-void

    .line 113
    .restart local v3       #ret:Ljava/lang/String;
    :cond_0
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 115
    .local v0, Value:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v0           #Value:I
    .end local v3           #ret:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyVolumeTable: Volumetable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v4, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->VolumePropertyname:Ljava/lang/String;

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->setPropertyVolumeTable(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 52
    const v1, 0x7f0700fc

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mApplyButton:Landroid/widget/Button;

    .line 53
    iget-object v1, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mApplyButton:Landroid/widget/Button;

    const-string v2, "Apply"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v1, 0x7f0700fd

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mLoadButton:Landroid/widget/Button;

    .line 58
    iget-object v1, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mLoadButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mLoadButton:Landroid/widget/Button;

    const-string v2, "Load default"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->MAX_REG_COUNT:I

    if-ge v0, v1, :cond_0

    .line 64
    iget-object v2, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mTextLabel:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mTextViewId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v0

    .line 65
    iget-object v1, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mTextLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->registerName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mEditReg:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mEditTextId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    aput-object v1, v2, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method private loadVolumeTable()V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->MAX_REG_COUNT:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method private setPropertyVolumeTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.fm.set_volume"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, i:Landroid/content/Intent;
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "volumetable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method private uiclear()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->MAX_REG_COUNT:I

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->mEditReg:[Landroid/widget/EditText;

    aget-object v1, v1, v0

    const-string v2, "N/A"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 126
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->applyVolumeTable()V

    .line 128
    const-string v0, "Apply Complete~!!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->loadVolumeTable()V

    .line 133
    const-string v0, "Load default value~!!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700fc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->setContentView(I)V

    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->initialize()V

    .line 148
    invoke-direct {p0}, Lcom/sec/android/app/fm/VolumeSettingTestActivity;->uiclear()V

    .line 149
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 154
    return-void
.end method
