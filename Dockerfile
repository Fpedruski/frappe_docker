FROM frappe/erpnext-nginx:v14.0.0

COPY --chown=frappe:frappe apps/erpnext /home/frappe/frappe-bench/apps/erpnext
COPY --chown=frappe:frappe sites /home/frappe/frappe-bench/sites

USER frappe

WORKDIR /home/frappe/frappe-bench

RUN bench build
