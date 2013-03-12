.class public Landroid/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$TwTextWatcher;,
        Landroid/widget/TimePicker$TwKeyListener;,
        Landroid/widget/TimePicker$SavedState;,
        Landroid/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final PICKER_HOUR:I

.field private final PICKER_MINUTE:I

.field private TW_DEBUG:Z

.field private final mAmPmButton:Landroid/widget/Button;

.field private mAmPmDecrementButton:Landroid/widget/ImageButton;

.field private mAmPmIncrementButton:Landroid/widget/ImageButton;

.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDivider:Landroid/widget/TextView;

.field private mHourDecrementButton:Landroid/widget/ImageButton;

.field private mHourIncrementButton:Landroid/widget/ImageButton;

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mMinuteDecrementButton:Landroid/widget/ImageButton;

.field private mMinuteIncrementButton:Landroid/widget/ImageButton;

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Landroid/widget/TimePicker$1;

    invoke-direct {v0}, Landroid/widget/TimePicker$1;-><init>()V

    sput-object v0, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 147
    const v0, 0x10103c4

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    .line 696
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/TimePicker;->TW_DEBUG:Z

    .line 698
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/widget/EditText;

    iput-object v5, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    .line 700
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/TimePicker;->PICKER_HOUR:I

    .line 701
    const/4 v5, 0x1

    iput v5, p0, Landroid/widget/TimePicker;->PICKER_MINUTE:I

    .line 154
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 157
    sget-object v5, Lcom/android/internal/R$styleable;->TimePicker:[I

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 159
    .local v2, attributesArray:Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const v6, 0x10900fa

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 161
    .local v4, layoutResourceId:I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 165
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 168
    const v5, 0x1020429

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    iput-object v5, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    .line 169
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    new-instance v6, Landroid/widget/TimePicker$2;

    invoke-direct {v6, p0}, Landroid/widget/TimePicker$2;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 182
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 183
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const v6, 0x10203d4

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 184
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    const v6, 0x2000005

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 185
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 188
    const v5, 0x102042d

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    .line 189
    iget-object v5, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 190
    iget-object v5, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    const v6, 0x10400e0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 194
    :cond_0
    const v5, 0x102042a

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    iput-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    .line 196
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 198
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 199
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 200
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 201
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    sget-object v6, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 202
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    new-instance v6, Landroid/widget/TimePicker$3;

    invoke-direct {v6, p0}, Landroid/widget/TimePicker$3;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 227
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v6, 0x10203d4

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 228
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 229
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v6, 0x2000006

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 232
    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-direct {v5}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 235
    const v5, 0x102042b

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 236
    .local v1, amPmView:Landroid/view/View;
    instance-of v5, v1, Landroid/widget/Button;

    if-eqz v5, :cond_9

    .line 237
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 238
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object v5, v1

    .line 239
    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 240
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v6, Landroid/widget/TimePicker$4;

    invoke-direct {v6, p0}, Landroid/widget/TimePicker$4;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    :goto_0
    new-instance v0, Landroid/widget/TimePicker$6;

    invoke-direct {v0, p0}, Landroid/widget/TimePicker$6;-><init>(Landroid/widget/TimePicker;)V

    .line 281
    .local v0, TouchListener:Landroid/view/View$OnTouchListener;
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePicker;->mHourIncrementButton:Landroid/widget/ImageButton;

    .line 282
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePicker;->mMinuteIncrementButton:Landroid/widget/ImageButton;

    .line 284
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePicker;->mHourDecrementButton:Landroid/widget/ImageButton;

    .line 285
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePicker;->mMinuteDecrementButton:Landroid/widget/ImageButton;

    .line 287
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourIncrementButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_1

    .line 288
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    :cond_1
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteIncrementButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_2

    .line 291
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    :cond_2
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourDecrementButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_3

    .line 294
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 296
    :cond_3
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteDecrementButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_4

    .line 297
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    :cond_4
    instance-of v5, v1, Landroid/widget/Button;

    if-nez v5, :cond_6

    .line 300
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    .line 301
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    .line 303
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_5

    .line 304
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 306
    :cond_5
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_6

    .line 307
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 311
    :cond_6
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourControl()V

    .line 312
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    .line 314
    sget-object v5, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 317
    iget-object v5, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 318
    iget-object v5, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 320
    invoke-virtual {p0}, Landroid/widget/TimePicker;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    .line 321
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 325
    :cond_7
    invoke-direct {p0}, Landroid/widget/TimePicker;->setContentDescriptions()V

    .line 328
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_8

    .line 329
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->setImportantForAccessibility(I)V

    .line 333
    :cond_8
    invoke-direct {p0}, Landroid/widget/TimePicker;->setTextWatcher()V

    .line 334
    return-void

    .line 249
    .end local v0           #TouchListener:Landroid/view/View$OnTouchListener;
    :cond_9
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    move-object v5, v1

    .line 250
    check-cast v5, Landroid/widget/NumberPicker;

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 251
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 252
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 253
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 254
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    new-instance v6, Landroid/widget/TimePicker$5;

    invoke-direct {v6, p0}, Landroid/widget/TimePicker$5;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 263
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v6, 0x10203d4

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 264
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 265
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 266
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 267
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/widget/TimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/TimePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/TimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/widget/TimePicker;->TW_DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/TimePicker;)[Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 612
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 613
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 616
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x10203d5

    const v2, 0x10203d3

    .line 620
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10405fc

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 622
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10405fd

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 625
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10405fe

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 627
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10405ff

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 632
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmDescription()V

    .line 642
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iput-object p1, p0, Landroid/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 376
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setTextWatcher()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 704
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 705
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 707
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/TimePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2}, Landroid/widget/TimePicker$TwTextWatcher;-><init>(Landroid/widget/TimePicker;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 708
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/TimePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3}, Landroid/widget/TimePicker$TwTextWatcher;-><init>(Landroid/widget/TimePicker;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 710
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/TimePicker$TwKeyListener;

    invoke-direct {v1, p0, v3}, Landroid/widget/TimePicker$TwKeyListener;-><init>(Landroid/widget/TimePicker;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 711
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/TimePicker$TwKeyListener;

    invoke-direct {v1, p0, v2}, Landroid/widget/TimePicker$TwKeyListener;-><init>(Landroid/widget/TimePicker;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 712
    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .parameter "root"
    .parameter "viewId"
    .parameter "contDescResId"

    .prologue
    .line 663
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 664
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 665
    iget-object v1, p0, Landroid/widget/TimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 667
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 5

    .prologue
    const v4, 0x2000006

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 587
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 590
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 608
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 609
    return-void

    .line 592
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 595
    :cond_1
    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 596
    .local v0, index:I
    :goto_1
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_3

    .line 597
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 598
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 599
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 601
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmDescription()V

    goto :goto_0

    .line 595
    .end local v0           #index:I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 604
    .restart local v0       #index:I
    :cond_3
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateAmPmDescription()V
    .locals 5

    .prologue
    const v4, 0x1040601

    const v3, 0x1040600

    const v2, 0x10203d5

    const v1, 0x10203d3

    .line 646
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 647
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v0, v1, v3}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 650
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v0, v2, v3}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v0, v1, v4}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 655
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v0, v2, v4}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 2

    .prologue
    .line 575
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 577
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 578
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    sget-object v1, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 584
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 581
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 582
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    goto :goto_0
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 675
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 676
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 677
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 679
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 681
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 682
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 683
    :cond_2
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 685
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 541
    invoke-virtual {p0, p1}, Landroid/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 542
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 454
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 455
    .local v0, currentHour:I
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 460
    :goto_0
    return-object v1

    .line 457
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 458
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 460
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 362
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 363
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 364
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 564
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 565
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 566
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 570
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 571
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 572
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 547
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 549
    const/4 v0, 0x1

    .line 550
    .local v0, flags:I
    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 551
    or-int/lit16 v0, v0, 0x80

    .line 555
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 556
    iget-object v2, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 557
    iget-object v2, p0, Landroid/widget/TimePicker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, selectedDateUtterance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    return-void

    .line 553
    .end local v1           #selectedDateUtterance:Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 435
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePicker$SavedState;

    .line 436
    .local v0, ss:Landroid/widget/TimePicker$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 437
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 438
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 439
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 429
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 430
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2
    .parameter "currentHour"

    .prologue
    const/16 v1, 0xc

    .line 469
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 474
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 476
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 477
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 485
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    .line 487
    :cond_3
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 488
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    goto :goto_0

    .line 480
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 481
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 482
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "currentMinute"

    .prologue
    .line 527
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 531
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 338
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 342
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 343
    iget-object v0, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 346
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 347
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 352
    :goto_1
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "is24HourView"

    .prologue
    .line 497
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 507
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    .line 502
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 503
    .local v0, currentHour:I
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourControl()V

    .line 505
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 506
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .parameter "onTimeChangedListener"

    .prologue
    .line 447
    iput-object p1, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 448
    return-void
.end method
