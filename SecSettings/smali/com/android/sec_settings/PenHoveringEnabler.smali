.class public final Lcom/android/sec_settings/PenHoveringEnabler;
.super Ljava/lang/Object;
.source "PenHoveringEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/sec_settings/PenHoveringEnabler;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/sec_settings/PenHoveringEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/PenHoveringEnabler$1;-><init>(Lcom/android/sec_settings/PenHoveringEnabler;)V

    iput-object v0, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mSwitch:Landroid/widget/Switch;

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.PEN_HOVERING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/PenHoveringEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/PenHoveringEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static isEnabledScreenReaderService(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, enabledServicesSetting:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 149
    const-string v3, ""

    .line 152
    :cond_0
    sget-object v0, Lcom/android/sec_settings/PenHoveringEnabler;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 154
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 156
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, componentNameString:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 160
    .local v2, enabledService:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 161
    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    const/4 v4, 0x1

    .line 165
    .end local v1           #componentNameString:Ljava/lang/String;
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090a09

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090a08

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/sec_settings/PenHoveringEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/PenHoveringEnabler$3;-><init>(Lcom/android/sec_settings/PenHoveringEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/sec_settings/PenHoveringEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/PenHoveringEnabler$2;-><init>(Lcom/android/sec_settings/PenHoveringEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 221
    return-void
.end method

.method public static removeEnabledScreenReaderValue(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, enabledServicesSetting:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/sec_settings/PenHoveringEnabler;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 177
    .local v1, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 179
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 180
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, componentNameString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 183
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    :cond_2
    if-eqz v2, :cond_1

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 190
    .end local v2           #componentNameString:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, state:I
    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    .line 130
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/sec_settings/PenHoveringEnabler;->isEnabledScreenReaderService(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/android/sec_settings/PenHoveringEnabler;->makeTalkBackDisablePopup()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 134
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    const-string v1, "PenHoveringEnabler"

    const-string v2, "switch is on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_2
    if-nez p2, :cond_0

    if-ne v0, v4, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    const-string v1, "PenHoveringEnabler"

    const-string v2, "switch is off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.PEN_HOVERING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PenHoveringEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v1, "PenHoveringEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PEN_HOVERING SWITCH = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mCheck:I

    iget-object v2, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 99
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    return-void

    .line 101
    :cond_0
    const-string v1, "changed"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 79
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, state:I
    iput v0, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mCheck:I

    .line 82
    if-ne v0, v3, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 84
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 85
    const-string v1, "PenHoveringEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.PEN_HOVERING_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/PenHoveringEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
