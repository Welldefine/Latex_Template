import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

# 设置全局字体大小
plt.rcParams.update({'font.size': 14})

# Data for the first chart (AI impact on jobs)
categories = ['Job Creation', 'Job Loss', 'Uncertain']
values = [49, 23, 28]

# Data for the second chart (AI-linked roles growth)
roles = ['Data Scientists', 'Big Data Specialists', 'Business Intelligence Analysts']
growth = [30, 30, 35]

# Define colors using seaborn color palette
color_palette = sns.color_palette("Set2")
color_creation = color_palette[0]  # Light blue for "Job Creation"
color_displacement = color_palette[1]  # Deep red for "Job Displacement"
color_uncertain = color_palette[2]  # Another color for "Uncertain"
role_colors = sns.color_palette("Set2", n_colors=3)  # Blue shades for AI-linked roles

# First pie chart: AI impact on jobs
plt.figure(figsize=(8, 8))  # 设置正方形区域
plt.pie(values, labels=categories, autopct='%1.1f%%', colors=[color_creation, color_displacement, color_uncertain], startangle=140)
#plt.title('AI Impact on Jobs', fontsize=18)

# Save the first figure
plt.tight_layout()
plt.savefig('ai_impact_on_jobs_pie.png')
plt.close()

# Second bar chart: AI-linked roles growth
plt.figure(figsize=(8, 8))  # 设置正方形区域
sns.barplot(x=roles, y=growth, palette=role_colors)
plt.title('Growth of AI-linked Roles', fontsize=18)
plt.ylabel('Growth Percentage (%)', fontsize=16)
plt.grid(True, linestyle='--', linewidth=0.5)  # 添加坐标虚线

# 在柱状图上标出数值
for i, v in enumerate(growth):
    plt.text(i, v + 1, str(v), ha='center', va='bottom', fontsize=14)

# Save the second figure
plt.tight_layout()
plt.savefig('ai_linked_roles_growth.png')
plt.close()
