.class public Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;
.super Landroid/app/Dialog;
.source "DateTimeIntentReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateTimeDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/settings/DateTimeIntentReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/DateTimeIntentReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter "context"
    .parameter "str"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    .line 109
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    .line 278
    new-instance v6, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog$1;

    invoke-direct {v6, p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog$1;-><init>(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)V

    iput-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iput-object p2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    .line 111
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->requestWindowFeature(I)Z

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x200

    const/16 v8, 0x200

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setFlags(II)V

    .line 119
    const-string v6, "ro.build.characteristics"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, deviceType:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, "tablet"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x55

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 123
    .local v0, WMLP:Landroid/view/WindowManager$LayoutParams;
    const/4 v6, 0x6

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 124
    const/16 v6, -0x23

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 134
    :goto_0
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setCanceledOnTouchOutside(Z)V

    .line 135
    const v6, 0x7f040046

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setContentView(I)V

    .line 136
    invoke-virtual {p0, p3}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    const v6, 0x7f0b00a3

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$002(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;

    .line 139
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v6, 0x7f0b0095

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$102(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;

    .line 141
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v6, 0x7f0b009a

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Landroid/widget/CheckBox;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$202(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 143
    const v6, 0x7f0b0098

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$302(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 144
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v6, 0x7f0b009e

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Landroid/widget/CheckBox;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$402(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 146
    const v6, 0x7f0b009b

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$502(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 147
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v6, 0x7f0b00a2

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Landroid/widget/CheckBox;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$602(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 149
    const v6, 0x7f0b009f

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$702(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 150
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$700(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->resources:Landroid/content/res/Resources;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$802(Lcom/android/settings/DateTimeIntentReceiver;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 154
    const v6, 0x7f0b0096

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->datetime:Landroid/widget/TextView;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$902(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 155
    const v6, 0x7f0b0097

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->timezone:Landroid/widget/TextView;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$1002(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 156
    const v6, 0x7f0b00a1

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;
    invoke-static {p1, v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$1102(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, autoTimeEnabled:Z
    const/4 v2, 0x0

    .line 161
    .local v2, autoTimeZoneEnabled:Z
    invoke-static {p2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v6

    const v7, 0x7f09013f

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 163
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    :goto_1
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Landroid/widget/CheckBox;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 170
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Landroid/widget/CheckBox;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Landroid/widget/CheckBox;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->is24Hour()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 176
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time_zone"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->registerTimeBroadcast()V

    .line 186
    return-void

    .line 128
    .end local v0           #WMLP:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #autoTimeEnabled:Z
    .end local v2           #autoTimeZoneEnabled:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 130
    .restart local v0       #WMLP:Landroid/view/WindowManager$LayoutParams;
    const/16 v6, -0x23

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .line 166
    .restart local v1       #autoTimeEnabled:Z
    .restart local v2       #autoTimeZoneEnabled:Z
    :cond_1
    const-string v6, "auto_time"

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 167
    const-string v6, "auto_time_zone"

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 177
    :catch_0
    move-exception v5

    .line 178
    .local v5, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "DateTimeIntentReceiver"

    const-string v7, "there is no AUTO_TIME_ZONE value on settinbs db so remove automatic timezone layout"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const v6, 0x7f0b009b

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 180
    .local v4, layout:Landroid/widget/LinearLayout;
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic access$1400(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private formatOffset(I)[C
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 371
    div-int/lit16 v3, p1, 0x3e8

    div-int/lit8 p1, v3, 0x3c

    .line 373
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 374
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 375
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 376
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 378
    if-gez p1, :cond_0

    .line 379
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 380
    neg-int p1, p1

    .line 385
    :goto_0
    div-int/lit8 v1, p1, 0x3c

    .line 386
    .local v1, hours:I
    rem-int/lit8 v2, p1, 0x3c

    .line 388
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 389
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 391
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 393
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 394
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 396
    return-object v0

    .line 382
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 252
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 254
    :cond_0
    :goto_0
    return v1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private registerTimeBroadcast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 272
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 276
    return-void
.end method

.method private set24Hour(Z)V
    .locals 3
    .parameter "is24Hour"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 248
    return-void

    .line 245
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 260
    const-string v0, "DateTimeIntentReceiver"

    const-string v1, "dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 262
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    .line 263
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/DateTimeIntentReceiver;->access$1302(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    .line 264
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 265
    return-void
.end method

.method getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 340
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->resources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/android/settings/DateTimeIntentReceiver;->access$800(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 341
    .local v2, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 342
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 343
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 344
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 345
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 350
    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 351
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 352
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 361
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 367
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object p1

    .line 348
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 362
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 363
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Ill-formatted timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 356
    .end local v1           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 357
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 364
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    .line 365
    .local v0, ioe:Ljava/io/IOException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Unable to read timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 359
    .end local v0           #ioe:Ljava/io/IOException;
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 7
    .parameter "tz"

    .prologue
    .line 322
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 323
    .local v2, daylight:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 325
    .local v0, date:J
    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->formatOffset(I)[C

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const/4 v5, 0x1

    invoke-virtual {p1, v2, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, mTimeZoneDisplayName:Ljava/lang/String;
    const-string v5, "GMT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 331
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 192
    iget-object v7, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v7

    if-ne p1, v7, :cond_1

    .line 193
    const-string v5, "DateTimeIntentReceiver"

    const-string v7, "close button is clicked"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->dismiss()V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v7, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v7

    if-ne p1, v7, :cond_2

    .line 198
    const-string v5, "DateTimeIntentReceiver"

    const-string v7, "manual setup button is clicked"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v2, i:Landroid/content/Intent;
    const-string v5, "android.settings.DATE_SETTINGS"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const v5, 0x10008000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 203
    invoke-static {v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    .line 206
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    const-string v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 208
    .local v3, mStatusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapse()V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->dismiss()V

    goto :goto_0

    .line 212
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #mStatusBar:Landroid/app/StatusBarManager;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-ne p1, v7, :cond_5

    .line 213
    iget-object v7, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Landroid/widget/CheckBox;
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-nez v7, :cond_3

    move v1, v5

    .line 214
    .local v1, autoEnabled:Z
    :goto_1
    const-string v7, "DateTimeIntentReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoDateTime is clicked : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v7, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_time"

    if-eqz v1, :cond_4

    :goto_2
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto/16 :goto_0

    .end local v1           #autoEnabled:Z
    :cond_3
    move v1, v6

    .line 213
    goto :goto_1

    .restart local v1       #autoEnabled:Z
    :cond_4
    move v5, v6

    .line 216
    goto :goto_2

    .line 220
    .end local v1           #autoEnabled:Z
    :cond_5
    iget-object v7, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-ne p1, v7, :cond_8

    .line 221
    iget-object v7, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Landroid/widget/CheckBox;
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-nez v7, :cond_6

    move v1, v5

    .line 222
    .restart local v1       #autoEnabled:Z
    :goto_3
    const-string v7, "DateTimeIntentReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoTimezone is clicked : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v7, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_time_zone"

    if-eqz v1, :cond_7

    :goto_4
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 225
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto/16 :goto_0

    .end local v1           #autoEnabled:Z
    :cond_6
    move v1, v6

    .line 221
    goto :goto_3

    .restart local v1       #autoEnabled:Z
    :cond_7
    move v5, v6

    .line 224
    goto :goto_4

    .line 228
    .end local v1           #autoEnabled:Z
    :cond_8
    iget-object v7, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$700(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-ne p1, v7, :cond_0

    .line 229
    iget-object v7, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Landroid/widget/CheckBox;
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-nez v7, :cond_9

    move v0, v5

    .line 230
    .local v0, Enabled:Z
    :goto_5
    const-string v5, "DateTimeIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "24 hour format is clicked : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->set24Hour(Z)V

    .line 232
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 233
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 235
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.TIME_SET"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v4, timeChanged:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v0           #Enabled:Z
    .end local v4           #timeChanged:Landroid/content/Intent;
    :cond_9
    move v0, v6

    .line 229
    goto :goto_5
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 401
    packed-switch p1, :pswitch_data_0

    .line 407
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 403
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 289
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 290
    .local v3, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 292
    .local v2, now:Ljava/util/Calendar;
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, time:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, date:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->datetime:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$900(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timezone:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0900d0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 302
    :goto_0
    const-string v5, "DateTimeIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTimeAndDateDisplay(), date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", timezone : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 305
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 306
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 319
    :goto_1
    return-void

    .line 300
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0900cf

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 310
    const-string v5, "ro.build.characteristics"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, deviceType:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v5, "tablet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 312
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const v6, -0xbfbfc0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 315
    :cond_3
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1
.end method
