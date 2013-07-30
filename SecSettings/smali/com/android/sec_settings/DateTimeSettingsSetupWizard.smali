.class public Lcom/android/sec_settings/DateTimeSettingsSetupWizard;
.super Landroid/app/Activity;
.source "DateTimeSettingsSetupWizard.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoDateTimeButton:Landroid/widget/CompoundButton;

.field private mDatePicker:Landroid/widget/DatePicker;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedTimeZone:Ljava/util/TimeZone;

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

.field private mTimeZoneButton:Landroid/widget/Button;

.field private mTimeZonePopup:Landroid/widget/ListPopupWindow;

.field private mUsingXLargeLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 398
    new-instance v0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard$1;-><init>(Lcom/android/sec_settings/DateTimeSettingsSetupWizard;)V

    iput-object v0, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/DateTimeSettingsSetupWizard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->updateTimeAndDateDisplay()V

    return-void
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 407
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isAutoDateTimeEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 366
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 368
    :goto_0
    return v1

    .line 366
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private showTimezonePicker(I)V
    .locals 4
    .parameter "anchorViewId"

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, anchorView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 349
    sget-object v1, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find zone picker anchor view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_0
    return-void

    .line 352
    :cond_0
    new-instance v1, Landroid/widget/ListPopupWindow;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    .line 353
    iget-object v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 354
    iget-object v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 355
    iget-object v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 356
    iget-object v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 357
    iget-object v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 359
    iget-object v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 361
    iget-object v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private updateTimeAndDateDisplay()V
    .locals 6

    .prologue
    .line 383
    iget-boolean v2, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v2, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 387
    .local v0, now:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v2, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 390
    iget-object v2, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 391
    iget-object v2, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 392
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 393
    .local v1, systemTimeZone:Ljava/util/TimeZone;
    iget-object v2, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    iput-object v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    goto :goto_0
.end method


# virtual methods
.method public initUiForXl()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 134
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 135
    .local v5, tz:Ljava/util/TimeZone;
    iput-object v5, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    .line 136
    const v6, 0x7f0b00a8

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    .line 137
    iget-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 143
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "VNZ"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 144
    const/4 v0, 0x0

    .line 155
    .local v0, autoDateTimeEnabled:Z
    :goto_0
    const v6, 0x7f0b00aa

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    .line 156
    iget-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 157
    iget-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 159
    const v6, 0x7f0b00ae

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TimePicker;

    iput-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    .line 161
    iget-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-direct {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->is24Hour()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 163
    .local v3, now:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v9, 0xb

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 164
    iget-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v9, 0xc

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 166
    iget-object v9, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    if-nez v0, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 167
    const v6, 0x7f0b00ac

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/DatePicker;

    iput-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    .line 168
    iget-object v9, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    if-nez v0, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 169
    iget-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v6, v8}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/sec_settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 173
    const v6, 0x7f0b00a9

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 174
    .local v2, layout:Landroid/widget/LinearLayout;
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v6, v7}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 176
    iget-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v6, v7}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 177
    iget-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    invoke-virtual {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time_zone"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    sget-object v6, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v7, "isWifiOnly is true, remove Automatic date and time layout and set AUTO_TIME and AUTO_TIME_ZONE to false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v2           #layout:Landroid/widget/LinearLayout;
    :cond_0
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 185
    const v6, 0x7f0b003c

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v6, 0x7f0b003f

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 187
    .local v4, skipButton:Landroid/widget/Button;
    if-eqz v4, :cond_1

    .line 188
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    :cond_1
    return-void

    .line 146
    .end local v0           #autoDateTimeEnabled:Z
    .end local v3           #now:Ljava/util/Calendar;
    .end local v4           #skipButton:Landroid/widget/Button;
    :cond_2
    const-string v6, "extra_initial_auto_datetime_value"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 147
    const-string v6, "extra_initial_auto_datetime_value"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 148
    .restart local v0       #autoDateTimeEnabled:Z
    sget-object v6, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initUiForXl(), has EXTRA_INITIAL_AUTO_DATETIME_VALUE and autoDateTimeEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 150
    .end local v0           #autoDateTimeEnabled:Z
    :cond_3
    invoke-direct {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->isAutoDateTimeEnabled()Z

    move-result v0

    .line 151
    .restart local v0       #autoDateTimeEnabled:Z
    sget-object v6, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initUiForXl(), has not EXTRA_INITIAL_AUTO_DATETIME_VALUE and autoDateTimeEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v3       #now:Ljava/util/Calendar;
    :cond_4
    move v6, v8

    .line 166
    goto/16 :goto_1

    :cond_5
    move v6, v8

    .line 168
    goto/16 :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 272
    move v0, p2

    .line 286
    .local v0, autoEnabled:Z
    iget-object v2, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    if-ne p1, v2, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time"

    if-eqz p2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    iget-object v5, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    if-nez v0, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 291
    iget-object v2, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 293
    :cond_0
    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 295
    .local v1, focusedView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 296
    iget-object v2, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 297
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 300
    .end local v1           #focusedView:Landroid/view/View;
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 287
    goto :goto_0

    :cond_3
    move v2, v4

    .line 290
    goto :goto_1

    :cond_4
    move v3, v4

    .line 291
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 216
    :sswitch_0
    iget-boolean v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v4, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 218
    .local v1, focusedView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 219
    iget-object v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 220
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 224
    .end local v1           #focusedView:Landroid/view/View;
    :cond_0
    const v3, 0x7f0b00a8

    invoke-direct {p0, v3}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->showTimezonePicker(I)V

    goto :goto_0

    .line 228
    :sswitch_1
    iget-object v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    if-eqz v4, :cond_1

    .line 229
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 230
    .local v2, systemTimeZone:Ljava/util/TimeZone;
    iget-object v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 231
    sget-object v4, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v5, "Another TimeZone is selected by a user. Changing system TimeZone."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 234
    .local v0, alarm:Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 237
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #systemTimeZone:Ljava/util/TimeZone;
    :cond_1
    iget-object v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    if-eqz v4, :cond_3

    .line 238
    invoke-virtual {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    iget-object v6, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    iget-object v3, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 241
    iget-object v3, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->clearFocus()V

    .line 242
    iget-object v3, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getYear()I

    move-result v3

    iget-object v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getMonth()I

    move-result v4

    iget-object v5, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v5}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/sec_settings/DateTimeSettings;->setDate(III)V

    .line 245
    iget-object v3, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->clearFocus()V

    .line 246
    iget-object v3, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/sec_settings/DateTimeSettings;->setTime(II)V

    .line 252
    :cond_3
    :sswitch_2
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->setResult(I)V

    .line 253
    invoke-virtual {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->finish()V

    goto/16 :goto_0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b003c -> :sswitch_1
        0x7f0b003f -> :sswitch_2
        0x7f0b00a8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    iget-object v0, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    .line 267
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->requestWindowFeature(I)Z

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-static {}, Lcom/android/sec_settings/Utils;->isDomesticModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    :cond_0
    const v3, 0x7f040047

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->setContentView(I)V

    .line 97
    const v3, 0x7f0b00a8

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    .line 98
    iget-boolean v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->initUiForXl()V

    .line 109
    :goto_1
    const v1, 0x7f040048

    invoke-static {p0, v2, v1}, Lcom/android/sec_settings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    .line 117
    iget-boolean v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v1, :cond_1

    .line 118
    const v1, 0x7f0b00a4

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, layoutRoot:Landroid/view/View;
    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 121
    .end local v0           #layoutRoot:Landroid/view/View;
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 97
    goto :goto_0

    .line 107
    :cond_3
    const v1, 0x7f0b003c

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/sec_settings/ZonePicker;->obtainTimeZoneFromItem(Ljava/lang/Object;)Ljava/util/TimeZone;

    move-result-object v3

    .line 305
    .local v3, tz:Ljava/util/TimeZone;
    iget-boolean v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v4, :cond_1

    .line 306
    iput-object v3, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    .line 307
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 308
    .local v1, now:Ljava/util/Calendar;
    iget-object v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 309
    iget-object v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :cond_0
    iget-object v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 314
    iget-object v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 315
    iget-object v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 325
    .end local v1           #now:Ljava/util/Calendar;
    :goto_0
    iget-object v4, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 326
    return-void

    .line 319
    :cond_1
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 320
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0b00a6

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/sec_settings/DateTimeSettings;

    .line 323
    .local v2, settingsFragment:Lcom/android/sec_settings/DateTimeSettings;
    invoke-virtual {v2, p0}, Lcom/android/sec_settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 208
    iget-object v0, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 342
    const v0, 0x7f0b00a5

    invoke-direct {p0, v0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->showTimezonePicker(I)V

    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v0, filter:Landroid/content/IntentFilter;
    iget-boolean v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v1, :cond_0

    .line 197
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    :cond_0
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 203
    return-void
.end method
