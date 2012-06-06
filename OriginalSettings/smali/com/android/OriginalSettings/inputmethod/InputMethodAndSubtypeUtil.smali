.class public Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;
.super Ljava/lang/Object;
.source "InputMethodAndSubtypeUtil.java"


# static fields
.field private static final sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private static final sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 53
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDisabledSystemInputMethods(Ljava/lang/StringBuilder;Ljava/util/HashSet;)V
    .locals 4
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, imes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 82
    .local v2, needsAppendSeparator:Z
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, ime:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 84
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 90
    .end local v1           #ime:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static buildEnabledInputMethodsString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 3
    .parameter "builder"
    .parameter "imi"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, subtypes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, subtypeId:Ljava/lang/String;
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    .end local v1           #subtypeId:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static buildInputMethodsAndSubtypesString(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
    .locals 4
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, imsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 69
    .local v2, needsAppendSeparator:Z
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    .local v1, imi:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 71
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-static {p0, v1, v3}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->buildEnabledInputMethodsString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/HashSet;)V

    goto :goto_0

    .line 73
    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 77
    .end local v1           #imi:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "context"
    .parameter "resolver"
    .parameter "imm"
    .parameter
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p3, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v5, 0x0

    .line 156
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v5

    .line 157
    :cond_1
    const-string v6, "default_input_method"

    invoke-static {p1, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, currentInputMethodId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 160
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 161
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 162
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 163
    .local v4, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2, p4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 164
    .local v3, imiLabel:Ljava/lang/CharSequence;
    if-eqz v4, :cond_4

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, p0, v8, v9}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, ""

    :goto_1
    aput-object v6, v7, v8

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 170
    .local v5, summary:Ljava/lang/CharSequence;
    :goto_2
    goto :goto_0

    .line 164
    .end local v5           #summary:Ljava/lang/CharSequence;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " - "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v5, v3

    goto :goto_2
.end method

.method private static getDisabledSystemIMEs(Landroid/content/ContentResolver;)Ljava/util/HashSet;
    .locals 3
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 142
    .local v1, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v2, "disabled_system_input_methods"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, disabledIMEsStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    :cond_0
    return-object v1

    .line 147
    :cond_1
    sget-object v2, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 148
    :goto_0
    sget-object v2, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    sget-object v2, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;
    .locals 6
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 112
    const-string v5, "enabled_input_methods"

    invoke-static {p0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, enabledInputMethodsStr:Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v2, imsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    :cond_0
    return-object v2

    .line 123
    :cond_1
    sget-object v5, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 124
    :cond_2
    :goto_0
    sget-object v5, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 125
    sget-object v5, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, nextImsStr:Ljava/lang/String;
    sget-object v5, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 127
    sget-object v5, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 128
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 130
    .local v4, subtypeHashes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, imeId:Ljava/lang/String;
    :goto_1
    sget-object v5, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 132
    sget-object v5, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getInputMethodSubtypeSelected(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "resolver"

    .prologue
    .line 94
    :try_start_0
    const-string v1, "selected_input_method_subtype"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 97
    :goto_0
    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static isAuxiliaryIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .parameter "imi"

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v0

    return v0
.end method

.method private static isInputMethodSubtypeSelected(Landroid/content/ContentResolver;)Z
    .locals 2
    .parameter "resolver"

    .prologue
    .line 102
    invoke-static {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->getInputMethodSubtypeSelected(Landroid/content/ContentResolver;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .parameter "property"

    .prologue
    .line 368
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadInputMethodSubtypeList(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V
    .locals 10
    .parameter "context"
    .parameter "resolver"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/OriginalSettings/SettingsPreferenceFragment;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p2, inputMethodInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p3, inputMethodPrefsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/preference/Preference;>;>;"
    invoke-static {p1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v2

    .line 307
    .local v2, enabledSubtypes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 308
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 309
    .local v6, imiId:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 310
    .local v8, pref:Landroid/preference/Preference;
    if-eqz v8, :cond_0

    instance-of v9, v8, Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_0

    move-object v0, v8

    .line 311
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 312
    .local v0, checkBoxPreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 313
    .local v7, isEnabled:Z
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 314
    if-eqz p3, :cond_1

    .line 315
    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 316
    .local v1, childPref:Landroid/preference/Preference;
    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 319
    .end local v1           #childPref:Landroid/preference/Preference;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-static {p0, p2, v6, v7}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 320
    invoke-static {p0, p2, v2}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->updateSubtypesPreferenceChecked(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_0

    .line 323
    .end local v0           #checkBoxPreference:Landroid/preference/CheckBoxPreference;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #imiId:Ljava/lang/String;
    .end local v7           #isEnabled:Z
    .end local v8           #pref:Landroid/preference/Preference;
    :cond_2
    return-void
.end method

.method private static putSelectedInputMethodSubtype(Landroid/content/ContentResolver;I)V
    .locals 1
    .parameter "resolver"
    .parameter "hashCode"

    .prologue
    .line 106
    const-string v0, "selected_input_method_subtype"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    return-void
.end method

.method public static saveInputMethodSubtypeList(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V
    .locals 28
    .parameter "context"
    .parameter "resolver"
    .parameter
    .parameter "hasHardKeyboard"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/OriginalSettings/SettingsPreferenceFragment;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, inputMethodInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const-string v26, "default_input_method"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, currentInputMethodId:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->getInputMethodSubtypeSelected(Landroid/content/ContentResolver;)I

    move-result v18

    .line 182
    .local v18, selectedInputMethodSubtype:I
    invoke-static/range {p1 .. p1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v8

    .line 184
    .local v8, enabledIMEAndSubtypesMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->getDisabledSystemIMEs(Landroid/content/ContentResolver;)Ljava/util/HashSet;

    move-result-object v7

    .line 186
    .local v7, disabledSystemIMEs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    const/16 v16, 0x1

    .line 187
    .local v16, onlyOneIME:Z
    :goto_0
    const/4 v15, 0x0

    .line 188
    .local v15, needsToResetSelectedSubtype:Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 189
    .local v11, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    .line 190
    .local v12, imiId:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 191
    .local v17, pref:Landroid/preference/Preference;
    if-eqz v17, :cond_0

    .line 194
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/preference/CheckBoxPreference;

    move/from16 v26, v0

    if-eqz v26, :cond_7

    check-cast v17, Landroid/preference/CheckBoxPreference;

    .end local v17           #pref:Landroid/preference/Preference;
    invoke-virtual/range {v17 .. v17}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v14

    .line 197
    .local v14, isImeChecked:Z
    :goto_2
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 198
    .local v13, isCurrentInputMethod:Z
    invoke-static {v11}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->isAuxiliaryIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    .line 199
    .local v3, auxIme:Z
    invoke-static {v11}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v25

    .line 200
    .local v25, systemIme:Z
    if-nez v16, :cond_1

    if-eqz v25, :cond_2

    if-nez v3, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    :cond_2
    if-eqz v14, :cond_b

    .line 201
    :cond_3
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 203
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v8, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_4
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/HashSet;

    .line 207
    .local v24, subtypesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 208
    .local v23, subtypePrefFound:Z
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v20

    .line 209
    .local v20, subtypeCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move/from16 v0, v20

    if-ge v9, v0, :cond_c

    .line 210
    invoke-virtual {v11, v9}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v19

    .line 211
    .local v19, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 212
    .local v21, subtypeHashCodeStr:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/CheckBoxPreference;

    .line 215
    .local v22, subtypePref:Landroid/preference/CheckBoxPreference;
    if-nez v22, :cond_8

    .line 209
    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 186
    .end local v3           #auxIme:Z
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v12           #imiId:Ljava/lang/String;
    .end local v13           #isCurrentInputMethod:Z
    .end local v14           #isImeChecked:Z
    .end local v15           #needsToResetSelectedSubtype:Z
    .end local v16           #onlyOneIME:Z
    .end local v19           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v20           #subtypeCount:I
    .end local v21           #subtypeHashCodeStr:Ljava/lang/String;
    .end local v22           #subtypePref:Landroid/preference/CheckBoxPreference;
    .end local v23           #subtypePrefFound:Z
    .end local v24           #subtypesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25           #systemIme:Z
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 194
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v12       #imiId:Ljava/lang/String;
    .restart local v15       #needsToResetSelectedSubtype:Z
    .restart local v16       #onlyOneIME:Z
    .restart local v17       #pref:Landroid/preference/Preference;
    :cond_7
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    goto :goto_2

    .line 216
    .end local v17           #pref:Landroid/preference/Preference;
    .restart local v3       #auxIme:Z
    .restart local v9       #i:I
    .restart local v13       #isCurrentInputMethod:Z
    .restart local v14       #isImeChecked:Z
    .restart local v19       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v20       #subtypeCount:I
    .restart local v21       #subtypeHashCodeStr:Ljava/lang/String;
    .restart local v22       #subtypePref:Landroid/preference/CheckBoxPreference;
    .restart local v23       #subtypePrefFound:Z
    .restart local v24       #subtypesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v25       #systemIme:Z
    :cond_8
    if-nez v23, :cond_9

    .line 219
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->clear()V

    .line 221
    const/4 v15, 0x1

    .line 222
    const/16 v23, 0x1

    .line 224
    :cond_9
    invoke-virtual/range {v22 .. v22}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v26

    if-eqz v26, :cond_a

    .line 225
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    if-eqz v13, :cond_5

    .line 227
    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v26

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 230
    const/4 v15, 0x0

    goto :goto_4

    .line 234
    :cond_a
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 238
    .end local v9           #i:I
    .end local v19           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v20           #subtypeCount:I
    .end local v21           #subtypeHashCodeStr:Ljava/lang/String;
    .end local v22           #subtypePref:Landroid/preference/CheckBoxPreference;
    .end local v23           #subtypePrefFound:Z
    .end local v24           #subtypesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_b
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    if-eqz v13, :cond_c

    .line 247
    const/4 v5, 0x0

    .line 252
    :cond_c
    if-eqz v25, :cond_0

    if-eqz p3, :cond_0

    .line 253
    invoke-virtual {v7, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 254
    if-eqz v14, :cond_0

    .line 255
    invoke-virtual {v7, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 258
    :cond_d
    if-nez v14, :cond_0

    .line 259
    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 265
    .end local v3           #auxIme:Z
    .end local v11           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v12           #imiId:Ljava/lang/String;
    .end local v13           #isCurrentInputMethod:Z
    .end local v14           #isImeChecked:Z
    .end local v25           #systemIme:Z
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v4, builder:Ljava/lang/StringBuilder;
    invoke-static {v4, v8}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v6, disabledSysImesBuilder:Ljava/lang/StringBuilder;
    invoke-static {v6, v7}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->buildDisabledSystemInputMethods(Ljava/lang/StringBuilder;Ljava/util/HashSet;)V

    .line 281
    if-nez v15, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->isInputMethodSubtypeSelected(Landroid/content/ContentResolver;)Z

    move-result v26

    if-nez v26, :cond_10

    .line 285
    :cond_f
    const/16 v26, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->putSelectedInputMethodSubtype(Landroid/content/ContentResolver;I)V

    .line 288
    :cond_10
    const-string v26, "enabled_input_methods"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 290
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    if-lez v26, :cond_11

    .line 291
    const-string v26, "disabled_system_input_methods"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 296
    :cond_11
    const-string v26, "default_input_method"

    if-eqz v5, :cond_12

    .end local v5           #currentInputMethodId:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 298
    return-void

    .line 296
    .restart local v5       #currentInputMethodId:Ljava/lang/String;
    :cond_12
    const-string v5, ""

    goto :goto_5
.end method

.method public static setSubtypesPreferenceEnabled(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter "id"
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/OriginalSettings/SettingsPreferenceFragment;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, inputMethodProperties:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 328
    .local v4, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 329
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 330
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v6

    .line 331
    .local v6, subtypeCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 332
    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 333
    .local v5, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 335
    .local v3, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_1

    .line 336
    invoke-virtual {v3, p3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 331
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    .end local v0           #i:I
    .end local v2           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v3           #pref:Landroid/preference/CheckBoxPreference;
    .end local v5           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6           #subtypeCount:I
    :cond_2
    return-void
.end method

.method public static updateSubtypesPreferenceChecked(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 11
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/OriginalSettings/SettingsPreferenceFragment;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, inputMethodProperties:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p2, enabledSubtypes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 347
    .local v7, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 348
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, id:Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 350
    .local v0, enabledSubtypesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v9

    .line 351
    .local v9, subtypeCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v9, :cond_0

    .line 352
    invoke-virtual {v5, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 353
    .local v8, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, hashCode:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 360
    .local v6, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_1

    .line 361
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v6, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 351
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    .end local v0           #enabledSubtypesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1           #hashCode:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #pref:Landroid/preference/CheckBoxPreference;
    .end local v8           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v9           #subtypeCount:I
    :cond_2
    return-void
.end method
