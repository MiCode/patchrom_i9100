.class public Lcom/android/settings/wifi/WifiConnectionPreference;
.super Landroid/preference/Preference;
.source "WifiConnectionPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectedKey:Ljava/lang/String;

    .line 68
    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mProtectFromCheckedChange:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectable:Z

    .line 64
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mProtectFromCheckedChange:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectable:Z

    .line 56
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mProtectFromCheckedChange:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectable:Z

    .line 47
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f04011b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPreference;->setLayoutResource(I)V

    .line 101
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, view:Landroid/view/View;
    const v4, 0x1010001

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 77
    .local v3, widget:Landroid/view/View;
    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/widget/RadioButton;

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 78
    check-cast v1, Landroid/widget/RadioButton;

    .line 79
    .local v1, rb:Landroid/widget/RadioButton;
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectable:Z

    if-eqz v4, :cond_2

    .line 80
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 84
    sput-object v1, Lcom/android/settings/wifi/WifiConnectionPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectedKey:Ljava/lang/String;

    .line 88
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mProtectFromCheckedChange:Z

    .line 89
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 90
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mProtectFromCheckedChange:Z

    .line 96
    .end local v0           #isChecked:Z
    .end local v1           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    return-object v2

    .line 92
    .restart local v1       #rb:Landroid/widget/RadioButton;
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 117
    :cond_0
    if-eqz p2, :cond_2

    .line 118
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 121
    :cond_1
    sput-object p1, Lcom/android/settings/wifi/WifiConnectionPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectedKey:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_2
    sput-object v1, Lcom/android/settings/wifi/WifiConnectionPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 126
    sput-object v1, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectedKey:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiConnectionPreference;->mSelectable:Z

    .line 132
    return-void
.end method
