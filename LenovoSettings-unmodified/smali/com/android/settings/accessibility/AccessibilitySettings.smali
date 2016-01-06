.class public Lcom/android/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field private static final CAPTIONING_PREFERENCE_SCREEN:Ljava/lang/String; = "captioning_preference_screen"

.field private static final DEFAULT_SCREENREADER_MARKET_LINK:Ljava/lang/String; = "market://search?q=pname:com.google.android.marvin.talkback"

.field private static final DELAY_UPDATE_SERVICES_MILLIS:J = 0x3e8L

.field private static final DIALOG_ID_NO_ACCESSIBILITY_SERVICES:I = 0x1

.field private static final DISPLAY_MAGNIFICATION_PREFERENCE_SCREEN:Ljava/lang/String; = "screen_magnification_preference_screen"

.field static final ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR:C = ':'

.field private static final ENABLE_ACCESSIBILITY_GESTURE_PREFERENCE_SCREEN:Ljava/lang/String; = "enable_global_gesture_preference_screen"

.field static final EXTRA_CHECKED:Ljava/lang/String; = "checked"

.field static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "preference_key"

.field static final EXTRA_SETTINGS_COMPONENT_NAME:Ljava/lang/String; = "settings_component_name"

.field static final EXTRA_SETTINGS_TITLE:Ljava/lang/String; = "settings_title"

.field static final EXTRA_SUMMARY:Ljava/lang/String; = "summary"

.field static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final IPO_SETTING_PREFERENCE:Ljava/lang/String; = "ipo_setting"

.field private static final KEY_INSTALL_ACCESSIBILITY_SERVICE_OFFERED_ONCE:Ljava/lang/String; = "key_install_accessibility_service_offered_once"

.field private static final KEY_INSTALL_PLUGIN_APK:Ljava/lang/String; = "install_plugin_apk"

.field private static final LARGE_FONT_SCALE:F = 1.3f

.field private static final LARGE_FONT_SCALE_PHONE:F = 1.15f

.field private static final LARGE_FONT_SCALE_TABLET:F = 1.3f

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilitySettings"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field private static final SELECT_LONG_PRESS_TIMEOUT_PREFERENCE:Ljava/lang/String; = "select_long_press_timeout_preference"

.field private static final SERVICES_CATEGORY:Ljava/lang/String; = "services_category"

.field private static final SHOW_INSTAL_PLUGIN_APK:Z = false

.field private static final SYSTEM_CATEGORY:Ljava/lang/String; = "system_category"

.field private static final SYSTEM_PROPERTY_MARKET_URL:Ljava/lang/String; = "ro.screenreader.market"

.field private static final TOGGLE_LARGE_TEXT_PREFERENCE:Ljava/lang/String; = "toggle_large_text_preference"

.field private static final TOGGLE_LOCK_SCREEN_ROTATION_PREFERENCE:Ljava/lang/String; = "toggle_lock_screen_rotation_preference"

.field private static final TOGGLE_POWER_BUTTON_ENDS_CALL_PREFERENCE:Ljava/lang/String; = "toggle_power_button_ends_call_preference"

.field private static final TOGGLE_SCRIPT_INJECTION_PREFERENCE:Ljava/lang/String; = "toggle_script_injection_preference"

.field private static final TOGGLE_SPEAK_PASSWORD_PREFERENCE:Ljava/lang/String; = "toggle_speak_password_preference"

.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mHandler:Landroid/os/Handler;

.field private mIpoSetting:Landroid/preference/CheckBoxPreference;

.field private mIsScreenLarge:Z

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoServicesMessagePreference:Landroid/preference/Preference;

.field private mRotationObserver:Landroid/database/ContentObserver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSystemsCategory:Landroid/preference/PreferenceCategory;

.field private mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleScriptInjectionPreference:Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;

.field private mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 987
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$7;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilitySettings$7;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mIsScreenLarge:Z

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 173
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 185
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 211
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    .line 220
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 1082
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$8;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/AccessibilitySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateRotationCheckbox()V

    return-void
.end method

.method private handleDisplayMagnificationPreferenceScreenClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 535
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 536
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f0a09e9

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v3, "summary"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a09ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 540
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 542
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 544
    return-void

    :cond_0
    move v1, v2

    .line 540
    goto :goto_0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 514
    return-void

    .line 512
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTogglEnableAccessibilityGesturePreferenceClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 523
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 524
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f0a09eb

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v3, "summary"

    const v4, 0x7f0a03f7

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 530
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 532
    return-void

    :cond_0
    move v1, v2

    .line 528
    goto :goto_0
.end method

.method private handleToggleLargeTextPreferenceClick()V
    .locals 2

    .prologue
    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666    # 1.3f

    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 495
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_1
    return-void

    .line 493
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 509
    return-void

    .line 504
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 520
    return-void

    .line 517
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 12

    .prologue
    const/16 v11, 0x1a

    .line 547
    const-string v8, "services_category"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    .line 548
    const-string v8, "system_category"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    .line 551
    const-string v8, "toggle_large_text_preference"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    .line 555
    const-string v8, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    .line 557
    invoke-static {v11}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 559
    :cond_0
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 563
    :cond_1
    const-string v8, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 566
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 570
    :cond_2
    const-string v8, "toggle_speak_password_preference"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    .line 574
    const-string v8, "select_long_press_timeout_preference"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 576
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 577
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070036

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 580
    .local v6, "timeoutValues":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070035

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 583
    .local v4, "timeoutTitles":[Ljava/lang/String;
    array-length v5, v6

    .line 584
    .local v5, "timeoutValueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 585
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v9, v6, v1

    aget-object v10, v4, v1

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    .end local v1    # "i":I
    .end local v4    # "timeoutTitles":[Ljava/lang/String;
    .end local v5    # "timeoutValueCount":I
    .end local v6    # "timeoutValues":[Ljava/lang/String;
    :cond_3
    const-string v8, "captioning_preference_screen"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 594
    const-string v8, "screen_magnification_preference_screen"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 598
    const-string v8, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e003b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 602
    .local v3, "longPressOnPowerBehavior":I
    const/4 v0, 0x1

    .line 603
    .local v0, "LONG_PRESS_POWER_GLOBAL_ACTIONS":I
    invoke-static {v11}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    if-eq v3, v8, :cond_4

    .line 612
    :cond_4
    const-string v8, "ipo_setting"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mIpoSetting:Landroid/preference/CheckBoxPreference;

    .line 620
    const-string v8, "row"

    const-string v9, "ro.lenovo.region"

    const-string v10, "prc"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 621
    .local v2, "isRowProduct":Z
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v8, :cond_5

    if-nez v2, :cond_5

    .line 625
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 626
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mIpoSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 627
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 635
    const-string v8, "tts_settings_preference"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 637
    .local v7, "ttsSettingsPreference":Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_5

    .line 638
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 653
    .end local v7    # "ttsSettingsPreference":Landroid/preference/PreferenceScreen;
    :cond_5
    const-string v8, "toggle_script_injection_preference"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;

    iput-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;

    .line 656
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/lenovo/settings/accessibility/AccessibilityEnableScriptInjectionPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 659
    return-void
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 966
    sget-object v4, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 967
    .local v4, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 969
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 972
    .local v3, "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez v3, :cond_1

    .line 984
    :cond_0
    return-void

    .line 976
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 977
    .local v2, "installedServiceInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 978
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 979
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    .local v1, "installedService":Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private offerInstallAccessibilitySerivceOnce()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 883
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-eq v8, v9, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 887
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v8, "key_install_accessibility_service_offered_once"

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    move v3, v6

    .line 889
    .local v3, "offerInstallService":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 890
    const-string v8, "ro.screenreader.market"

    const-string v9, "market://search?q=pname:com.google.android.marvin.talkback"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 893
    .local v5, "screenreaderMarketLink":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 894
    .local v2, "marketUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v1, v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 896
    .local v1, "marketIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 901
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "key_install_accessibility_service_offered_once"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 909
    const-string v7, "row"

    const-string v8, "ro.lenovo.region"

    const-string v9, "prc"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 910
    .local v0, "isRowProduct":Z
    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    goto :goto_0

    .end local v0    # "isRowProduct":Z
    .end local v1    # "marketIntent":Landroid/content/Intent;
    .end local v2    # "marketUri":Landroid/net/Uri;
    .end local v3    # "offerInstallService":Z
    .end local v5    # "screenreaderMarketLink":Ljava/lang/String;
    :cond_2
    move v3, v7

    .line 887
    goto :goto_1
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    .line 663
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateSystemPreferences()V

    .line 664
    return-void
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 875
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 876
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 879
    :cond_0
    return-void

    .line 876
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateRotationCheckbox()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1091
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1093
    .local v0, "autoRotationEnabled":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1094
    return-void
.end method

.method private updateServicesPreferences()V
    .locals 21

    .prologue
    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 676
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v12

    .line 678
    .local v12, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    .line 681
    .local v8, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "accessibility_enabled"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    .line 684
    .local v3, "accessibilityEnabled":Z
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "count":I
    :goto_1
    if-ge v10, v6, :cond_5

    .line 685
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 687
    .local v11, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 689
    .local v13, "preference":Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 691
    .local v17, "title":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v15, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 692
    .local v15, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 697
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 698
    if-eqz v3, :cond_3

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v14, 0x1

    .line 700
    .local v14, "serviceEnabled":Z
    :goto_2
    if-eqz v14, :cond_4

    .line 701
    const v18, 0x7f0a0a02

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 706
    :goto_3
    invoke-virtual {v13, v10}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 707
    const-class v18, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 708
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 710
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 711
    .local v9, "extras":Landroid/os/Bundle;
    const-string v18, "preference_key"

    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v18, "checked"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 713
    const-string v18, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v7

    .line 716
    .local v7, "description":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 717
    const v18, 0x7f0a0a2b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 719
    :cond_0
    const-string v18, "summary"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v16

    .line 722
    .local v16, "settingsClassName":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 723
    const-string v18, "settings_title"

    const v19, 0x7f0a0a01

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v18, "settings_component_name"

    new-instance v19, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_1
    const-string v18, "component_name"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 684
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 681
    .end local v3    # "accessibilityEnabled":Z
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "count":I
    .end local v7    # "description":Ljava/lang/String;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "i":I
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v13    # "preference":Landroid/preference/PreferenceScreen;
    .end local v14    # "serviceEnabled":Z
    .end local v15    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v16    # "settingsClassName":Ljava/lang/String;
    .end local v17    # "title":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 698
    .restart local v3    # "accessibilityEnabled":Z
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "count":I
    .restart local v10    # "i":I
    .restart local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v13    # "preference":Landroid/preference/PreferenceScreen;
    .restart local v15    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v17    # "title":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 703
    .restart local v14    # "serviceEnabled":Z
    :cond_4
    const v18, 0x7f0a0a03

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 735
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v13    # "preference":Landroid/preference/PreferenceScreen;
    .end local v14    # "serviceEnabled":Z
    .end local v15    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v17    # "title":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v18

    if-nez v18, :cond_7

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 737
    new-instance v18, Lcom/android/settings/accessibility/AccessibilitySettings$5;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettings$5;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f0400ed

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 751
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 753
    :cond_7
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 14

    .prologue
    const v13, 0x7f0a0a03

    const v12, 0x7f0a0a02

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 758
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :goto_0
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->fontScale:F

    const v11, 0x3fa66666    # 1.3f

    cmpl-float v7, v7, v11

    if-nez v7, :cond_1

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 793
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    .line 797
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateRotationCheckbox()V

    .line 801
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "speak_password"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v4, v8

    .line 803
    .local v4, "speakPasswordEnabled":Z
    :goto_2
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 806
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "long_press_timeout"

    iget v11, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 808
    .local v2, "longPressTimeout":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 809
    .local v5, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 810
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v10, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 813
    iget v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 814
    .local v6, "valueDefault":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 815
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v10, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 819
    .end local v6    # "valueDefault":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "accessibility_captioning_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_3

    move v0, v8

    .line 821
    .local v0, "captioningEnabled":Z
    :goto_3
    if-eqz v0, :cond_4

    .line 822
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 828
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "accessibility_display_magnification_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_5

    move v3, v8

    .line 830
    .local v3, "magnificationEnabled":Z
    :goto_5
    if-eqz v3, :cond_6

    .line 831
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 839
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "enable_accessibility_global_gesture_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_7

    move v1, v8

    .line 841
    .local v1, "globalGestureEnabled":Z
    :goto_7
    if-eqz v1, :cond_8

    .line 842
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0a09ec

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 871
    :goto_8
    return-void

    .end local v0    # "captioningEnabled":Z
    .end local v1    # "globalGestureEnabled":Z
    .end local v2    # "longPressTimeout":I
    .end local v3    # "magnificationEnabled":Z
    .end local v4    # "speakPasswordEnabled":Z
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    move v7, v9

    .line 779
    goto/16 :goto_1

    :cond_2
    move v4, v9

    .line 801
    goto/16 :goto_2

    .restart local v2    # "longPressTimeout":I
    .restart local v4    # "speakPasswordEnabled":Z
    .restart local v5    # "value":Ljava/lang/String;
    :cond_3
    move v0, v9

    .line 819
    goto :goto_3

    .line 824
    .restart local v0    # "captioningEnabled":Z
    :cond_4
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v13}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_4

    :cond_5
    move v3, v9

    .line 828
    goto :goto_5

    .line 834
    .restart local v3    # "magnificationEnabled":Z
    :cond_6
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v13}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_6

    :cond_7
    move v1, v9

    .line 839
    goto :goto_7

    .line 845
    .restart local v1    # "globalGestureEnabled":Z
    :cond_8
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0a09ed

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_8

    .line 759
    .end local v0    # "captioningEnabled":Z
    .end local v1    # "globalGestureEnabled":Z
    .end local v2    # "longPressTimeout":I
    .end local v3    # "magnificationEnabled":Z
    .end local v4    # "speakPasswordEnabled":Z
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1071
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1072
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1078
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v3, 0xf

    .line 265
    .local v2, "screenSize":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mIsScreenLarge:Z

    .line 270
    const/high16 v3, 0x7f050000

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 271
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 276
    .local v1, "root":Landroid/preference/PreferenceScreen;
    const-string v3, "install_plugin_apk"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 277
    .local v0, "ps":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 283
    :cond_1
    return-void

    .line 265
    .end local v0    # "ps":Landroid/preference/Preference;
    .end local v1    # "root":Landroid/preference/PreferenceScreen;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    const/4 v0, 0x0

    .line 922
    packed-switch p1, :pswitch_data_0

    .line 961
    :goto_0
    return-object v0

    .line 924
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0a29

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0a2a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$6;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 922
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 311
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 321
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 322
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    move-object v8, p2

    .line 327
    check-cast v8, Ljava/lang/String;

    .line 328
    .local v8, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a09f4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a09e4

    const-class v4, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/settings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x1

    .line 347
    .end local v8    # "stringValue":Ljava/lang/String;
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const v3, 0x7f0a09e4

    const/4 v9, 0x1

    .line 352
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleLargeTextPreferenceClick()V

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a09ee

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/settings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 455
    .end local p2    # "preference":Landroid/preference/Preference;
    :goto_0
    return v0

    .line 368
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_1

    .line 369
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a09f2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/settings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 383
    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_2

    .line 385
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a079c

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/settings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 399
    goto :goto_0

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_3

    .line 401
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a09f3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/settings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 415
    goto/16 :goto_0

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v0, p2, :cond_4

    .line 417
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleTogglEnableAccessibilityGesturePreferenceClick()V

    move v0, v9

    .line 418
    goto/16 :goto_0

    .line 419
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v0, p2, :cond_5

    .line 420
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleDisplayMagnificationPreferenceScreenClick()V

    move v0, v9

    .line 421
    goto/16 :goto_0

    .line 424
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mIpoSetting:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_6

    .line 426
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    .line 431
    .local v8, "isChecked":Z
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0430

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/settings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 443
    goto/16 :goto_0

    .line 449
    .end local v8    # "isChecked":Z
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_6
    const-string v0, "install_plugin_apk"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_7

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->installPluginApks(Landroid/content/Context;)V

    move v0, v9

    .line 451
    goto/16 :goto_0

    .line 455
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 287
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 288
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    .line 289
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    .line 291
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->offerInstallAccessibilitySerivceOnce()V

    .line 293
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 294
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 306
    return-void
.end method
