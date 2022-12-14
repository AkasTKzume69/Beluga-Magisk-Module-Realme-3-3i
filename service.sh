# Google Tweaks
sleep '0.001'
su -c 'pm enable com.google.android.gms'
sleep '0.001'
su -c 'pm enable com.google.android.gsf'
sleep '0.001'
su -c 'pm enable com.google.android.gms/.update.SystemUpdateActivity'
sleep '0.001'
su -c 'pm enable com.google.android.gms/.update.SystemUpdateService'
sleep '0.001'
su -c 'pm enable com.google.android.gms/.update.SystemUpdateServiceActiveReceiver'
sleep '0.001'
su -c 'pm enable com.google.android.gms/.update.SystemUpdateServiceReceiver'
sleep '0.001'
su -c 'pm enable com.google.android.gms/.update.SystemUpdateServiceSecretCodeReceiver'
sleep '0.001'
su -c 'pm enable com.google.android.gsf/.update.SystemUpdateActivity'
sleep '0.001'
su -c 'pm enable com.google.android.gsf/.update.SystemUpdatePanoActivity'
sleep '0.001'
su -c 'pm enable com.google.android.gsf/.update.SystemUpdateService'
sleep '0.001'
su -c 'pm enable com.google.android.gsf/.update.SystemUpdateServiceReceiver'
sleep '0.001'
su -c "pm disable com.google.android.gms/com.google.android.gms.nearby.bootstrap.service.NearbyBootstrapService"
su -c "pm disable com.google.android.gms/NearbyMessagesService"
su -c "pm disable com.google.android.gms/com.google.android.gms.nearby.connection.service.NearbyConnectionsAndroidService"
su -c "pm disable com.google.android.gms/com.google.location.nearby.direct.service.NearbyDirectService"
su -c 'pm enable com.google.android.gsf/.update.SystemUpdateServiceSecretCodeReceiver'

# Power HAL
echo -e "com.mobile.legends\n" > /data/vendor/powerhal/smart

sleep 1
done
exit 0
