.class public Lcom/android/settings/personalvibration/VibrationPatternListAdapter;
.super Landroid/widget/BaseAdapter;
.source "VibrationPatternListAdapter.java"


# instance fields
.field context:Landroid/content/Context;

.field private defaultPattern:Ljava/lang/String;

.field private defaultPattern1:Ljava/lang/String;

.field private defaultPattern2:Ljava/lang/String;

.field private defaultPattern3:Ljava/lang/String;

.field private defaultPattern4:Ljava/lang/String;

.field private defaultPattern5:Ljava/lang/String;

.field mInflater:Landroid/view/LayoutInflater;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPatternNames:Ljava/util/Vector;

.field public mPatternString:Ljava/util/Vector;

.field public mPatternTypes:Ljava/util/Vector;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->context:Landroid/content/Context;

    .line 48
    iput-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    iput-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mPatternNames:Ljava/util/Vector;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mPatternTypes:Ljava/util/Vector;

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mPatternString:Ljava/util/Vector;

    .line 60
    const-string v0, " "

    iput-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->defaultPattern:Ljava/lang/String;

    .line 70
    const-string v0, "100, 100, 100, 50, 100, 50, 100, 50, 100, 50, 100"

    iput-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->defaultPattern1:Ljava/lang/String;

    .line 71
    const-string v0, "100, 105, 100, 50, 100, 50, 100, 50, 100, 50, 100"

    iput-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->defaultPattern2:Ljava/lang/String;

    .line 72
    const-string v0, "100, 110, 100, 50, 100, 50, 100, 50, 100, 50, 100"

    iput-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->defaultPattern3:Ljava/lang/String;

    .line 73
    const-string v0, "100, 115, 100, 50, 100, 50, 100, 50, 100, 50, 100"

    iput-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->defaultPattern4:Ljava/lang/String;

    .line 74
    const-string v0, "100, 120, 100, 50, 100, 50, 100, 50, 100, 50, 100"

    iput-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->defaultPattern5:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->context:Landroid/content/Context;

    .line 82
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 83
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mPatternNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 105
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPatternName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mPatternNames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    .local v0, tmpString:Ljava/lang/String;
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 129
    const-string v4, "VibrationPatternListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getView / position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v4, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400f3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 139
    const v4, 0x1020014

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 142
    .local v2, v:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->getPatternName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/high16 v4, 0x41a0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 145
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "BRI"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "TGY"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    :cond_0
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 151
    :cond_1
    iget-object v4, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->context:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 152
    .local v3, wm:Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 153
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 154
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 160
    .local v0, density:I
    return-object v2
.end method

.method public loadPatternType()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mPatternNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mPatternTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 167
    iget-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mPatternString:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 169
    iget-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 171
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "VibrationPatternListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const/4 v7, 0x0

    .line 177
    .local v7, count:I
    :cond_0
    const-string v0, "VibrationPatternListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibration name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vibration_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v0, "VibrationPatternListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibration pattern : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vibration_pattern"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v0, "VibrationPatternListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibration type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vibration_type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mPatternNames:Ljava/util/Vector;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mPatternString:Ljava/util/Vector;

    const-string v1, "vibration_pattern"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->mPatternTypes:Ljava/util/Vector;

    const-string v1, "vibration_type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v7, v7, 0x1

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    .end local v7           #count:I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 190
    return-void
.end method
