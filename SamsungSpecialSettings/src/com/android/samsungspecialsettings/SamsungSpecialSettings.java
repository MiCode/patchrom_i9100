/*
 * Copyright (C) 2010 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.samsungspecialsettings;
import android.app.ActivityManagerNative;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.preference.PreferenceActivity;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;
import android.util.Log;
import android.view.IWindowManager;
import android.view.Surface;
import android.view.MenuItem;
import android.app.ActionBar;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;

import java.util.ArrayList;

public class SamsungSpecialSettings extends PreferenceActivity implements
    Preference.OnPreferenceChangeListener{
    private static final String LOG_TAG = "SamsungSpecialSettingsLog";

    /** If there is no setting in the provider, use this. */
    private static final String KEY_TOUCH_KEY_LIGHT = "touch_key_light";
    private static final String KEY_DISPLAY_SAVING = "display_saving";

    private ListPreference mTouchKeyLight;
    private CheckBoxPreference mDisplaySaving;
 
    public void onCreate(Bundle savedInstanceState) {
        Log.i(LOG_TAG, "onCreate");
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
              actionBar.setHomeButtonEnabled(true);
        }
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.samsung_special_settings);

        mTouchKeyLight = (ListPreference) findPreference(KEY_TOUCH_KEY_LIGHT);
        //please read the value of TouchKeyLightDuration and set it to mTouchKeyLight
        //mTouchKeyLight.setValue(String.valueOf(currentTimeout));
        mTouchKeyLight.setOnPreferenceChangeListener(this);
        mTouchKeyLight.setEnabled(true);

        mDisplaySaving = (CheckBoxPreference) findPreference(KEY_DISPLAY_SAVING);
        updateAutoAdjustScreenPowerState();

    }
    
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mTouchKeyLight){
            Log.i(LOG_TAG, "Touch key light duration");
        }else if(preference == mDisplaySaving){
            Log.i(LOG_TAG, "Auto adjust screen power");
            if (mDisplaySaving.isChecked()) {
                Log.i(LOG_TAG, "Checked");
                //please write the value in to the database here
            } else {
                Log.i(LOG_TAG, "Unchecked");
                //please write the value in to the database here
            }
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }
    
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        Log.i(LOG_TAG, "onOptionsItemSelected");
        switch (item.getItemId()) {
        case android.R.id.home:
            finish();
            return true;
        default:
            return super.onOptionsItemSelected(item);
        }
    }
    
    private void updateAutoAdjustScreenPowerState(){
        Log.i(LOG_TAG, "updateAutoAdjustScreenPowerState");
        //please update the state of mDisplaySaving here
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object objValue) {
        Log.i(LOG_TAG, "onPreferenceChange");
        final String key = preference.getKey();
        if (KEY_TOUCH_KEY_LIGHT.equals(key)) {
            int value = Integer.parseInt((String) objValue);
            //please put the value in to the database
            Log.i(LOG_TAG, "value: " + value);
        }
        return true;
    }
}

