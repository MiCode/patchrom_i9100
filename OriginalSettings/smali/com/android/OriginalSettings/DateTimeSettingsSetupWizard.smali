.class public Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;
.super Lcom/android/OriginalSettings/BaseActivity;
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
    .line 59
    const-class v0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 333
    new-instance v0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard$1;-><init>(Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->updateTimeAndDateDisplay()V

    return-void
.end method

.method private isAutoDateTimeEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 307
    :goto_0
    return v1

    .line 305
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private showTimezonePicker(I)V
    .locals 4
    .parameter "anchorViewId"

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 290
    .local v0, anchorView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 291
    sget-object v1, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find zone picker anchor view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    return-void

    .line 294
    :cond_0
    new-instance v1, Landroid/widget/ListPopupWindow;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    .line 295
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 296
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 297
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 298
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 299
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 300
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private updateTimeAndDateDisplay()V
    .locals 5

    .prologue
    .line 322
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 326
    .local v0, now:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 329
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 330
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method public initUiForXl()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 126
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 127
    .local v3, tz:Ljava/util/TimeZone;
    iput-object v3, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    .line 128
    const v4, 0x7f08007c

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    .line 129
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 135
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "extra_initial_auto_datetime_value"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    const-string v4, "extra_initial_auto_datetime_value"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 141
    .local v0, autoDateTimeEnabled:Z
    :goto_0
    const v4, 0x7f08007e

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    iput-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    .line 142
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 143
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    const v4, 0x7f080083

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TimePicker;

    iput-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    .line 146
    iget-object v7, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    if-nez v0, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 147
    const v4, 0x7f080080

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/DatePicker;

    iput-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    .line 148
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 149
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4, v6}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 151
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 153
    const v4, 0x7f080009

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v4, 0x7f080007

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 155
    .local v2, skipButton:Landroid/widget/Button;
    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    :cond_0
    return-void

    .line 138
    .end local v0           #autoDateTimeEnabled:Z
    .end local v2           #skipButton:Landroid/widget/Button;
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->isAutoDateTimeEnabled()Z

    move-result v0

    .restart local v0       #autoDateTimeEnabled:Z
    goto :goto_0

    :cond_2
    move v4, v6

    .line 146
    goto :goto_1

    :cond_3
    move v5, v6

    .line 148
    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 214
    move v0, p2

    .line 228
    .local v0, autoEnabled:Z
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    if-ne p1, v2, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time"

    if-eqz p2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    iget-object v5, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    if-nez v0, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 233
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 235
    :cond_0
    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 237
    .local v1, focusedView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 238
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 239
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 242
    .end local v1           #focusedView:Landroid/view/View;
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 229
    goto :goto_0

    :cond_3
    move v2, v4

    .line 232
    goto :goto_1

    :cond_4
    move v3, v4

    .line 233
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 180
    :sswitch_0
    const v2, 0x7f08007c

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->showTimezonePicker(I)V

    goto :goto_0

    .line 184
    :sswitch_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    if-eqz v2, :cond_0

    .line 185
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 186
    .local v1, systemTimeZone:Ljava/util/TimeZone;
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    sget-object v2, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v3, "Another TimeZone is selected by a user. Changing system TimeZone."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 190
    .local v0, alarm:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 193
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v1           #systemTimeZone:Ljava/util/TimeZone;
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/OriginalSettings/DateTimeSettings;->setDate(III)V

    .line 199
    iget-object v2, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/OriginalSettings/DateTimeSettings;->setTime(II)V

    .line 205
    :cond_1
    :sswitch_2
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->setResult(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->finish()V

    goto/16 :goto_0

    .line 194
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x7f080007 -> :sswitch_2
        0x7f080009 -> :sswitch_1
        0x7f08007c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->requestWindowFeature(I)Z

    .line 86
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v3, 0x7f04003c

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->setContentView(I)V

    .line 95
    const v3, 0x7f08007c

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    .line 96
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->initUiForXl()V

    .line 101
    :goto_1
    const v1, 0x7f04003d

    invoke-static {p0, v2, v1}, Lcom/android/OriginalSettings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    .line 109
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v1, :cond_0

    .line 110
    const v1, 0x7f080078

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, layoutRoot:Landroid/view/View;
    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 113
    .end local v0           #layoutRoot:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 95
    goto :goto_0

    .line 99
    :cond_2
    const v1, 0x7f080009

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

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
    .line 246
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/ZonePicker;->obtainTimeZoneFromItem(Ljava/lang/Object;)Ljava/util/TimeZone;

    move-result-object v3

    .line 247
    .local v3, tz:Ljava/util/TimeZone;
    iget-boolean v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v4, :cond_1

    .line 248
    iput-object v3, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    .line 249
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 250
    .local v1, now:Ljava/util/Calendar;
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 251
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

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

    .line 256
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 257
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 267
    .end local v1           #now:Ljava/util/Calendar;
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 268
    return-void

    .line 261
    :cond_1
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 262
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f08007a

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/DateTimeSettings;

    .line 265
    .local v2, settingsFragment:Lcom/android/OriginalSettings/DateTimeSettings;
    invoke-virtual {v2, p0}, Lcom/android/OriginalSettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 284
    const v0, 0x7f080079

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->showTimezonePicker(I)V

    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/OriginalSettings/DateTimeSettingsSetupWizard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 168
    return-void
.end method
