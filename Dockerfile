FROM hlds/server

# Add maps
ADD maps/* /opt/hlds/cstrike/maps/
ADD files/mapcycle.txt /opt/hlds/cstrike/mapcycle.txt
ADD files/maps.ini /opt/hlds/cstrike/addons/amxmodx/configs/maps.ini
ADD hlds_run.sh /bin/hlds_run.sh
RUN chmod a+x /bin/hlds_run.sh
ENTRYPOINT ["/bin/hlds_run.sh"]